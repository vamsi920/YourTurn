//
//  HomeView.swift
//  Yourturn
//
//  Created by Venkata Vamsi Devadula on 3/17/23.
//

import SwiftUI

struct HomeView: View { 
//    let username: String
    var username: String  
    var body: some View {
        ZStack{
            TabView{
                HomeCarouselView()
                    .tabItem{
                        Image(systemName: "house")
                        Text("Home")
                    }
                GroupsView()
                .tabItem{
                    Image(systemName: "house.lodge")
                    Text("Groups")
                }
//
//                AddNewView()
//                .tabItem{
//                    Image(systemName: "plus.app")
//                    Text("Add")
//
//                }
                
                                
                ActivityView()
                .tabItem{
                    Image(systemName: "list.bullet.clipboard")
                    Text("Activity")
                }
                ProfileView()
                .tabItem{
                    Image(systemName: "person")
                    Text("Profile")
                }
                
            }
            .navigationViewStyle(StackNavigationViewStyle())

            .accentColor(Color(hex: "364F6B"))
            .foregroundColor(Color(hex:"1E1E1E"))
            
            
            .padding(.bottom, 0)
            .edgesIgnoringSafeArea(.all)
        }
        .navigationBarBackButtonHidden(true)
//        .Color(color: "#000000")
          // 3
//        Text("Helo \(username)" )
    }
       
}

struct HomeView_Previews: PreviewProvider {
    

    static var previews: some View {
        HomeView(username: "Vamsi")
    }
}
