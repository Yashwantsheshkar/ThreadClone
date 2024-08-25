//
//  EditProfileView.swift
//  ThreadClone
//
//  Created by Yashwant Sheshkar on 26/08/24.
//

import SwiftUI

struct EditProfileView: View {
    @State private var bio = ""
    @State private var link: String = ""
    @State private var isPrivateProfile = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground)
                    .edgesIgnoringSafeArea([.bottom, .horizontal])
                VStack {
                    
                    //MARK: - name and profile image
                    
                    HStack(alignment: .top) {
                        VStack(alignment: .leading) {
                            Text("Name")
                                
                                .fontWeight(.semibold)
                            Text("Charles Lecierc")
                                
                        }
                        .font(.footnote)
                        Spacer()
                        CircularProfileImageView()
                        
                    }
                    Divider()
                    
                    //MARK: - bio fields
                    
                    VStack(alignment: .leading){
                        Text("Bio")
                            .fontWeight(.semibold)
                        
                        TextField(text: $bio) {
                            Text("Enter your bio...")
                        }
                    }
                    .font(.footnote)
                    Divider()
                    
                    //MARK: - link
                    
                    VStack(alignment: .leading){
                        Text("Link")
                            .fontWeight(.semibold)
                        TextField(text: $link, axis: .vertical) {
                           Text(" Add link...")
                        }
                    }
                    .font(.footnote)
                    Divider()
                    
                    //MARK: - Toggle between private mode and simple mode
                    
                    Toggle("Private profile", isOn: $isPrivateProfile)
                        
                        
                    
                    Divider()
                            
                            
                            
                        
                       
                    
                }
                .font(.footnote)
                .padding()
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                .overlay {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
                .padding()
                
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        
                    }
                    .font(.subheadline)
                    .foregroundStyle(.black)
                    
                }
                
                
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    
                }
            }
        }
    }
}

#Preview {
    EditProfileView()
}
