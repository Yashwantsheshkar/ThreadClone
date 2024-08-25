//
//  UserCell.swift
//  ThreadClone
//
//  Created by Yashwant Sheshkar on 25/08/24.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        
        HStack {
            CircularProfileImageView()
            
            VStack {
                Text("maxverstapper1")
                    .fontWeight(.semibold)
                
                Text("Max Verstappen")
                    .fontWeight(.bold)
            }
            .font(.footnote)
            
            Spacer()
            
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray), style: StrokeStyle(lineWidth: 1))
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
