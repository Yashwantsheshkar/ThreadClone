//
//  RegistrationView.swift
//  ThreadClone
//
//  Created by Yashwant Sheshkar on 23/08/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("ThreadLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                TextField("Enter you email", text: $email)
                    .modifier(ThreadsTextFieldModifier())
                
                SecureField("Enter you password", text: $password)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your full name", text: $fullname)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your username", text: $username)
                    .modifier(ThreadsTextFieldModifier())
            }
            
            Button {
                
            } label: {
                Text("Sign Up") 
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(width: 352, height: 44)
            .background(Color.black)
            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
            
            Spacer()
            Divider()
            
            Button{
                dismiss()
            } label: {
                HStack(spacing: 3.0) {
                    Text("Already have an account?")
                        
                    Text("Sign In")
                        .fontWeight(.bold)
                    }
                .foregroundStyle(.black)
                .font(.footnote)
            }
            .padding(.vertical, 16)
        }
        
        
    }
}

#Preview {
    RegistrationView()
}
