//
//  FeedView.swift
//  ThreadClone
//
//  Created by Yashwant Sheshkar on 24/08/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    // LazyVstact only loads the view which are on the screen so its much more efficient in trems of the speed of scrlling and user interactions.
                    
                    ForEach(0 ..< 10, id: \.self) { thread in
                        ThreadCell()
                    }
                }
            }
            .refreshable {
                print("DEBUG: Refresh threads")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.counterclockwise")
                            .foregroundStyle(Color.black)
                    }
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
