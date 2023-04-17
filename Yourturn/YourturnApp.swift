//
//  YourturnApp.swift
//  Yourturn
//
//  Created by Venkata Vamsi Devadula on 3/10/23.
//

import SwiftUI

@main
struct YourturnApp: App {
    var body: some Scene {
        WindowGroup {
            LoginView()
                .navigationBarBackButtonHidden(true) 
        }
    }
}
