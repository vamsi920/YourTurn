//
//  SignUpView.swift
//  Yourturn
//
//  Created by Venkata Vamsi Devadula on 3/11/23.
//

import SwiftUI

struct SignUpView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var phone = ""
    @State private var age = ""
    @State private var password = ""
    @State private var isActive = false
    @State private var showAlert = false
    @Environment(\.presentationMode) var presentationMode
    func hideKeyboard() {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    var body: some View {
        
//         NavigationStack{
        ZStack{
            Color(hex: "f3f3f3")
                .ignoresSafeArea()
            VStack{
                
                VStack{
                    Text("Create \n Account")
                        .padding()
                        .foregroundColor(Color(hex: "364F6B"))
                        .font(.system(size: 36))
                        .fontWeight(.bold)
                        .onTapGesture {
                                            self.hideKeyboard()
                                        }
                    TextField("username", text: $username)
                        .padding()
                        .background(Color.white)
                        .frame(width: 340, height: 60)
                        .cornerRadius(10.0)
                        .padding(.bottom, 0)
                        .onTapGesture {
                                            self.hideKeyboard()
                                        }
                    TextField("email", text: $email)
                        .padding()
                        .background(Color.white)
                        .frame(width: 340, height: 60)
                        .cornerRadius(10.0)
                        .padding(.bottom, 0)
                        .onTapGesture {
                                            self.hideKeyboard()
                                        }
                    TextField("phone", text: $phone)
                        .padding()
                        .background(Color.white)
                        .frame(width: 340, height: 60)
                        .cornerRadius(10.0)
                        .padding(.bottom, 0)
                        .onTapGesture {
                                            self.hideKeyboard()
                                        }
                    TextField("age", text: $age)
                        .padding()
                        .background(Color.white)
                        .frame(width: 340, height: 60)
                        .cornerRadius(10.0)
                        .padding(.bottom, 0)
                        .onTapGesture {
                                            self.hideKeyboard()
                                        }
                    SecureField("password", text:$password)
                        .padding()
                        .background(Color.white)
                        .frame(width: 340, height: 60)
                        .cornerRadius(10.0)
                        .padding(.bottom, 20)
                        .onTapGesture {
                                            self.hideKeyboard()
                                        }
                    Text("By signing up i agree to the terms and conditions")
                        .padding(.bottom, 15)
                        .font(.system(size: 15))
//                    NavigationLink(destination: LoginView()){
                        Button("Sign up", action: {
                            presentationMode.wrappedValue.dismiss()
                            showAlert = true
                        })
                        .alert(isPresented: $showAlert) {
                            Alert(title: Text("User created"), message: Text("You have successfully signed up"), dismissButton: .default(Text("OK")) {
                                presentationMode.wrappedValue.dismiss()
                            })
                        }
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color(hex:"3FC1C9" ) )
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .padding(.bottom, 30)

//                    }
                    Divider()
                    Text("Or Continue with")
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                        .font(.system(size: 12))
                    
                }
                VStack {
                    Button(action: {
                        // Dismiss the current view and go back to login page
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Login Now")
                            .font(.system(size: 15))
                            .underline(true, color: Color(hex: "FC5185"))
                            .foregroundColor(Color(hex:"FC5185"))
                    }
                }
            }
            .padding(.horizontal, 25)
            .ignoresSafeArea()
        }
//        NavigationLink(destination: LoginView(), isActive: $isActive) {
//            EmptyView()
//        }
//         }

    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
