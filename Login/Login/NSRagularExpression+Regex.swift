//
//  NSRagularExpression+Regex.swift
//  CombineDemo
//
//  Created by ankit bharti on 22/01/20.
//  Copyright © 2020 ankit kumar bharti. All rights reserved.
//

import Foundation

extension NSRegularExpression {
    func matches(_ string: String) -> Bool {
        let range = NSRange(location: 0, length: string.utf16.count)
        return firstMatch(in: string, options: [], range: range) != nil
    }
}
