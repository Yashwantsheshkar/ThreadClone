//
//  ExploreView.swift
//  ThreadClone
//
//  Created by Yashwant Sheshkar on 24/08/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 10, id: \.self) { user in
                        VStack {
                            UserCell() //refector the code for the code to look neat as well as use the components more easily across different views.
                            
                            Divider()
                        }
                        .padding(.vertical, 4)
                        
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Search")
            
        }
    }
}

#Preview {
    ExploreView()
}
