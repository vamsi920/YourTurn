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
    @State private var isActive = false
    @State private var isSignUpActive = false
    func hideKeyboard() {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    var body: some View {
        NavigationStack{
            
            
          ZStack{
            Color(hex: "f3f3f3")
                .ignoresSafeArea()
            VStack{
                Text("Hello again!! \n Welcome Back")
                    .foregroundColor(Color(hex: "364F6B"))
                .font(.system(size: 38))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(30)
                TextField("username, email or phone number", text: $username)
                    .padding()
                    .frame(width: 340, height: 60)
                    .background(Color.white)
                    .cornerRadius(10.0)
                    .padding(.bottom, 05)
                    .onTapGesture {
                            self.hideKeyboard()
                        }
                    
                SecureField("password", text:$password)
                    .padding()
                    .frame(width: 340, height: 60)
                    .background(Color.white)
                    .cornerRadius(10.0)
                    .padding(.bottom, 20)
                    .onTapGesture {
                                        self.hideKeyboard()
                                    }
                    HStack{
                        Spacer()
                    Text("Forgot Password?")
                    .padding(.bottom, 20)
                    .font(.system(size: 15))
                    .underline()
                    }
                
                NavigationLink( destination: HomeView(username: username)){
                    Button("Sign in", action: {
                        print("hello")
                        self.hideKeyboard()
//                        UIApplication.shared.endEditing()
                    })
                   
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color(hex:"3FC1C9" ) )
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .padding(.bottom, 30)
                }
                
                
                Divider()
                Text("Or Continue with")
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                    .font(.system(size: 12))
                
                Image("googleLogo")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .padding(.bottom, 12)
                HStack{
                    Text("Not a Member?")
                        .font(.system(size: 15))
                    
                    NavigationLink(destination: SignUpView()) {
                        Text("Register Now")
                    
                            .font(.system(size: 15))
                            .underline(true, color: Color(hex: "FC5185"))
                            .foregroundColor(Color(hex:"FC5185"))
                    }
                }
                
                    
    
            }
            .padding(.horizontal, 25)
            .ignoresSafeArea()
        }
//          .navigationDestination(for: String.self) {
//              txtValue in HomeView(username: txtValue)
//          }
//          .navigationDestination(for: Int.self){
//              val in SignUpView()
//          }
//          .navigationDestination(for: String.self, destination: SignUpView())

//            NavigationLink(destination: HomeView(username: username), isActive: $isActive) {
//                           EmptyView()
//                       }
//
//                       NavigationLink(destination: SignUpView(), isActive: $isSignUpActive) {
//                           EmptyView()
//                       }
//            navigationBarBackButtonHidden()
//            NavigationLink(destination: SignUpView(),isSignUpActive: $isSignUpActive){
//                EmptyView()
//            }
        }
        
        
        
        // padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
