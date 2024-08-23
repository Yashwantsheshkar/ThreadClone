//
//  LoginView.swift
//  ThreadClone
//
//  Created by Yashwant Sheshkar on 23/08/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Image("ThreadLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 120)
                    .padding()
                
                VStack {
                    TextField("Enter you email", text: $email)
                        .textInputAutocapitalization(.none)
                        .modifier(ThreadsTextFieldModifier())
                    
                    SecureField("Enter you password", text: $password)
                        .modifier(ThreadsTextFieldModifier())
                    
                }
                
            
               
                
                
                NavigationLink {
                    Text("Forgot password")
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 20)
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Button {
                    
                } label: {
                    Text("Login")
                }
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .frame(width: 352, height: 44)
                .background(Color.black)
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                
                Spacer()
                
                Divider()
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3.0) {
                        Text("Don't have an account?")
                            
                        Text("Sign up")
                            .fontWeight(.bold)
                        }
                    .foregroundStyle(.black)
                    .font(.footnote)
                    
                }
                .padding(.vertical, 16)
                

            }
            
            
            
        }
    }
}

#Preview {
    LoginView()
}
