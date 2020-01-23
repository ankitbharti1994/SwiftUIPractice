//
//  ViewModel.swift
//  CombineDemo
//
//  Created by ankit bharti on 23/01/20.
//  Copyright © 2020 ankit kumar bharti. All rights reserved.
//

import Combine
import SwiftUI

let emptyText = ""

final public class ViewModel: ObservableObject {
    @Published public var email = emptyText
    @Published public var password = emptyText
    @Published public var confirmPassword = emptyText
    @Published public var shouldlogin = false
    @Published public var message = emptyText
    
    
    private var passwordMatchingPublisher: AnyPublisher<String?, Never> {
        return Publishers.CombineLatest($password, $confirmPassword).map { password, passwordAgain in
            guard password == passwordAgain, password.count > 8 else { return nil }
            return password
        }.eraseToAnyPublisher()
    }
    
    private var emailValidationPublisher: AnyPublisher<String?, Never> {
        return $email
            .debounce(for: .milliseconds(300), scheduler: RunLoop.main)
            .removeDuplicates()
            .flatMap { email in
                return Future { promise in
                    self.isValid(email: email) { result in
                        switch result {
                        case let .success(isValid):
                            promise(.success(isValid ? email : nil))
                            
                        default:
                            promise(.success(nil))
                        }
                    }
                }
            }
            .eraseToAnyPublisher()
    }
    
    private var validCredential: AnyPublisher<(String?, String?), Never> {
        return Publishers.CombineLatest(emailValidationPublisher, passwordMatchingPublisher)
            .map {
                guard let em = $0, let pwd = $1 else { return (nil, nil) }
                return (em, pwd)
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
    private func isValid(email: String, _ completion: @escaping (Result<Bool, Never>) -> Void) {
        DispatchQueue.global(qos: .background).async {
            let regx = try? NSRegularExpression(pattern: "[a-z]+[0-9]*@gmail.com")
            let isValidEmail = regx?.matches(email) ?? false
            completion(.success(isValidEmail))
        }
    }
    
    private var validatedUsernamePasswordCancellable: AnyCancellable?
    
    public init() {
        registerForValidateUsernamePassword()
    }
    
    private func registerForValidateUsernamePassword() {
        validatedUsernamePasswordCancellable = validCredential.sink(receiveValue: { mail, pass in
            self.message = emptyText
            self.shouldlogin = (mail != nil && pass != nil)
        })
    }
}
