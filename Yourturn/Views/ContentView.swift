//
//  ContentView.swift
//  Yourturn
//
//  Created by Venkata Vamsi Devadula on 3/10/23.
//

import SwiftUI
extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        
        let red = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgbValue & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue)
    }
}

struct ContentView: View {
    @State private var isActive = false
    @State private var showLogin = false
    var body: some View{
            ZStack {
                // Replace SplashView with your own custom flash screen view
                SplashView()
                
                    .edgesIgnoringSafeArea(.all)
                    .opacity(self.isActive ? 0 : 1)
                
                if self.isActive {
                    LoginView()
                }
            }
//            .ignoresSafeArea()
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
