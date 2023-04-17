//
//  ProfileView.swift
//  Yourturn
//
//  Created by Venkata Vamsi Devadula on 3/31/23.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack{
            Color(hex: "f3f3f3")
                .ignoresSafeArea()
            VStack{
                VStack{
                    HStack{
                        Text("Profile")
                            .font(.title2)
                            .foregroundColor(Color(hex: "333333"))
                        
                        Spacer()
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "rectangle.portrait.and.arrow.forward")
                                .foregroundColor(.gray)
                                .font(.system(size:20))
                        })
                       
                           
                    }
                    .padding(.horizontal, 10)
                    VStack{
                        Image(systemName: "circle.fill")
                            .foregroundColor(.blue)
                            .font(.system(size:130))
                            .padding()
                        VStack( spacing: 5){
                            Text("Vamsi")
                            .font(.system(size:24))
                            .foregroundColor(Color(hex: "414141"))
                            Text("vammu920@gmail.com")
                                .font(.system(size:16))
                                .foregroundColor(Color(hex: "414141"))
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, -10)
                }
                .padding(.top,25)
                .padding(.horizontal, 20)
                VStack{
                    List {
                        Section(header: Text("Preferences")) {
                            Text("Friends")
                            Text("Notifications")
                            Text("Password")
                        }
                        Section(header: Text("Reviews")) {
                            Text("FeedBack")
                            Text("About Us")
                        }
                    }
                    // List { 
                    //     Section(header: Text("Preferences"))
                    //     {
                        
                    //     HStack{
                           
                    //         VStack(alignment: .leading, spacing: 5){
                    //             Text(item.name)
                    //             Text("Notifications")
                    //                 .font(.system(size:12))
                    //         }
                    //         Spacer()
                    //         Image(systemName: "chevron.right")
                    //             .foregroundColor(.gray)
                    //             .font(.system(size:14))
                    //             .padding()
                    //     }
                    //     .listRowBackground(Color.clear)
                    //     HStack{
                           
                    //         VStack(alignment: .leading, spacing: 5){
                    //             Text(item.name)
                    //             Text("Password")
                    //                 .font(.system(size:12))
                    //         }
                    //         Spacer()
                    //         Image(systemName: "chevron.right")
                    //             .foregroundColor(.gray)
                    //             .font(.system(size:14))
                    //             .padding()
                    //     }
                    //     .listRowBackground(Color.clear)}
                    // }
                    // .listStyle(PlainListStyle())
                }
                .padding(.top,10)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
