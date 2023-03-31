//
//  LoginView.swift
//  Yourturn
//
//  Created by Venkata Vamsi Devadula on 3/11/23.
//

import SwiftUI



struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        ZStack{
            Color(hex: "f3f3f3")
                .ignoresSafeArea()
            VStack{
                Text("Hello again!! \n Welcome Back")
                
                TextField("username, email or phone number", text: $username)
                SecureField("password", text:$password)
                Text("Forgot Password?")
                Button(action: {
                    print("hello world")
                }) {
                    Text("Sign in")
                }

                    
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
