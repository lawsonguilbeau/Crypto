//
//  UIApplication.swift
//  Crypto
//
//  Created by Lawson Guilbeau on 2/6/24.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing()  {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
