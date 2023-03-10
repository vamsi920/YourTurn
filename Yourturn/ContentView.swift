//
//  ContentView.swift
//  Yourturn
//
//  Created by Venkata Vamsi Devadula on 3/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.white)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image( "LogoNavyTeal")
                    .resizable()
                    .cornerRadius(20)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
            
            
                Image("Flashbase")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 1000.0)
                    .scaleEffect(0.7)
                    .foregroundColor(.accentColor)
                    .padding(.bottom, -200) // Add padding to push the image up
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
