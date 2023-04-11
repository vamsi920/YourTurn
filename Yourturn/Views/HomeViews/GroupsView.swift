//
//  GroupsView.swift
//  Yourturn
//
//  Created by Venkata Vamsi Devadula on 3/31/23.
//

import SwiftUI
struct groupNode: Identifiable {
    var id = UUID()
    var name: String
}
struct GroupsView: View {
    @State private var sortby = "Day"
    @State private var groups = [
        groupNode(name: "Design Team"),
        groupNode(name: "Marketing Squad"),
        groupNode(name: "Sales Avengers"),
        groupNode(name: "Product Gurus"),
        groupNode(name: "Engineering Ninjas"),
        groupNode(name: "Creative Minds"),
        groupNode(name: "Innovative Thinkers"),
        groupNode(name: "Project Mavericks"),
        groupNode(name: "Strategy Warriors"),
        groupNode(name: "Development Wizards"),
        groupNode(name: "Research Geniuses"),
        groupNode(name: "Analytics Titans"),
        groupNode(name: "User Experience Masters"),
        groupNode(name: "Quality Assurance Heroes"),
        groupNode(name: "Customer Support Ninjas"),
        groupNode(name: "Leadership Titans"),
        groupNode(name: "Content Creators"),
        groupNode(name: "Data Wizards"),
        groupNode(name: "Information Architects")
    ]
    
    var body: some View {
        ZStack{
            Color(hex: "f3f3f3")
                .ignoresSafeArea()
            VStack{
                VStack{
                    HStack{
                        Text("Groups")
                            .font(.title2)
                            .foregroundColor(Color(hex: "333333"))
                        
                        Spacer()
                        Menu {
                            Button {
                                // do something
                                sortby = "Day"
                            } label: {
                                Text ("Day")
                            }
                            Button {
                                // do something
                                sortby = "Week"
                            } label: {
                                Text ("Week")
                            }
                            Button {
                                // do something
                                sortby = "Month"
                            } label: {
                                Text ("Month")
                            }
                        } label: {
                            Text(sortby)
                            Image (systemName: "chevron.down")
                        }
                        
                    }
                    .padding(.horizontal, 10)
                    HStack{
                        Image(systemName: "circle.fill")
                            .foregroundColor(.blue)
                            .font(.system(size:50))
                            .padding()
                        VStack(alignment: .leading, spacing: 5){
                            Text("Hey yo")
                            Text("You have {x} Tasks left")
                                .font(.system(size:14))
                        }
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(Color(hex: "3FC1C9"))
                    .cornerRadius(20)
                    .foregroundColor(Color(hex:"434343"))
                    .padding(.top, -10)
                }
                .padding(.top,25)
                .padding(.horizontal, 20)
                VStack{
                    List(groups, id:\.id) { item in
                        HStack{
                            Image(systemName: "circle.fill")
                                .foregroundColor(.pink)
                                .font(.system(size:40))
                            VStack(alignment: .leading, spacing: 5){
                                Text(item.name)
                                Text("You have {x} Tasks left")
                                    .font(.system(size:12))
                            }
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                                .font(.system(size:14))
                                .padding()
                        }
                        .listRowBackground(Color.clear)
                    }
                    .listStyle(PlainListStyle())
                }
                .padding(.top,10)
            }
        }
    }
}

struct GroupsView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsView()
        
    }
    
}
