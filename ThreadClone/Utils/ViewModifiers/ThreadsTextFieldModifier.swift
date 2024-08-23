//
//  ThreadsTextFieldModifier.swift
//  ThreadClone
//
//  Created by Yashwant Sheshkar on 23/08/24.
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .padding(.horizontal, 24)
    }
}

