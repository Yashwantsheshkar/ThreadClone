//
//  ProfileView.swift
//  ThreadClone
//
//  Created by Yashwant Sheshkar on 24/08/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var namespace
    
    private var filterBarWidth: CGFloat {
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 20
    }
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            // bio and stats
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 12.0) {
                        // fullname and username
                        VStack(alignment: .leading, spacing: 4.0) {
                            Text("Charles Leclerc")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text("charles_leclerc")
                                .font(.subheadline)
                            
                        }
                        Text("Formula 1 driver for Scuderia Ferrari")
                            .font(.footnote)
                        
                        Text("2 followers")
                            .font(.caption)
                            .foregroundStyle(Color.gray)
                    }
                    Spacer()
                    CircularProfileImageView()
                }
            }
            Button{} label: {
                Text("Follow")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 362, height: 32)
                    .background(Color.black)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                
            }
            
            // user content list view
            VStack{
                HStack{
                    ForEach(ProfileThreadFilter.allCases) {filter in
                        VStack {
                            Text(filter.title)
                                .font(.subheadline)
                                .fontWeight(selectedFilter == filter ? .semibold : .regular)
                            
                            if selectedFilter == filter {
                                Rectangle()
                                    .foregroundStyle(.black)
                                    .frame(width: filterBarWidth, height: 1)
                                    .matchedGeometryEffect(id: "item", in: namespace)
                            } else {
                                Rectangle()
                                    .foregroundStyle(.clear)
                                    .frame(width: filterBarWidth, height: 1)
                                    
                                    
                            }
                            
                        }
                        .onTapGesture {
                            withAnimation(.spring()) {
                                selectedFilter = filter
                            }
                        }
                    }
                }
                LazyVStack {
                    ForEach(0 ... 10, id: \.self) { thread in
                        ThreadCell()
                    }
                }
            }
            .padding(.vertical, 8)
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    ProfileView()
}
