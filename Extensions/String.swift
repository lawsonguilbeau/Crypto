//
//  String.swift
//  Crypto
//
//  Created by Lawson Guilbeau on 2/24/24.
//

import Foundation

extension String {
    var removingHTMLOccurences: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
