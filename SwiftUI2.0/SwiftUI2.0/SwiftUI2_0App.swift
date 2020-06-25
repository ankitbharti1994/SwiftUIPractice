//
//  SwiftUI2_0App.swift
//  SwiftUI2.0
//
//  Created by ankit bharti on 24/06/20.
//

import SwiftUI

@main
struct SwiftUI2_0App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @Environment(\.scenePhase) var scenePhase
    
    init() {
        print(delegate)
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                Dashboard()
                    .navigationTitle("SwiftUI 2.0")
            }
        }
        .onChange(of: scenePhase) {
            switch $0 {
            case .active:
                print("active")
            case .background:
                print("background")
            case .inactive:
                print("inactive")
            @unknown default:
                fatalError()
            }
        }
    }
}
