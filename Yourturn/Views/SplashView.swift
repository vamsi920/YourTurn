//
//  SplashView.swift
//  Yourturn
//
//  Created by Venkata Vamsi Devadula on 3/17/23.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack{
            Color(hex: "F3F3F3")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image( "LogoNavyTeal")
                    .resizable()
                    .cornerRadius(20)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
            
            Spacer()
                Image("Flashbase")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 900.0)
                    .scaleEffect(0.7)
                    .foregroundColor(.accentColor)
                    .padding(.bottom, -200)  // Add padding to push the image up
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
