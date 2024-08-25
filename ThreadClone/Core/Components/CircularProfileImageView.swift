//
//  CircularProfileImageView.swift
//  ThreadClone
//
//  Created by Yashwant Sheshkar on 25/08/24.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("Avatar 1")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
