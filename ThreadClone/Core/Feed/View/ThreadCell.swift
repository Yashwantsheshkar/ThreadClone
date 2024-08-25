//
//  ThreadCells.swift
//  ThreadClone
//
//  Created by Yashwant Sheshkar on 25/08/24.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12.0){
                Image("Avatar 1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 4.0){
                   
                    // profile name
                    HStack {
                        Text("maxverstappen1")
                            .font(.footnote)
                        .fontWeight(.semibold)
                        
                        Spacer()
                        
                        
                        // time stampt
                        Text("10m")
                            .font(.caption)
                            .foregroundStyle(Color(.systemGray3))
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundStyle(Color(.darkGray))
                        }
                        
                    }
                    
                    Text("Formula 1 champion")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    HStack(spacing: 16.0) {
                        Button {} label: {
                            Image(systemName: "heart")
                                .foregroundStyle(Color(.black))
                        }
                        
                        Button {} label: {
                            Image(systemName: "bubble.right")
                                .foregroundStyle(Color(.black))
                        }
                        
                        Button {} label: {
                            Image(systemName: "arrow.rectanglepath")
                                .foregroundStyle(Color(.black))
                        }
                        
                        Button {} label: {
                            Image(systemName: "paperplane")
                                .foregroundStyle(Color(.black))
                        }
                        
                    }
                    .padding(.vertical, 8)
                    
                }
            }
            Divider()
        }
        .padding()
    }
}

#Preview {
    ThreadCell()
}
