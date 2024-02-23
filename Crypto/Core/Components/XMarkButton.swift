//
//  XMarkButton.swift
//  Crypto
//
//  Created by Lawson Guilbeau on 2/10/24.
//

import SwiftUI

struct XMarkButton: View {

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })
    }
}

#Preview {
    XMarkButton()
}
