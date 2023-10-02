//
//  InGroupView.swift
//  Yourturn
//
//  Created by Venkata Vamsi Devadula on 4/17/23.
//

import SwiftUI
struct TurnNode: Identifiable {
    var id = UUID()
    var name: String
    var date: String
    var month: String
    var year: String
    var freqLevel1: String
    var freqLevel2: String
    var status: String
    var nextTurnLevelDays: String
    var nextTurnLevelHours: String
    var nextTurnLevelMinutes: String

}
struct InGroupView: View {
    var gName: String
    @State private var isShowingNewTurnSheet = false
    @State private var Turn = [
        TurnNode(name: "Clean House", date: "23", month: "Mar", year: "2023", freqLevel1: "Weekly", freqLevel2: "Every Monday", status: "Active", nextTurnLevelDays: "6", nextTurnLevelHours: "11", nextTurnLevelMinutes: "19"),
        TurnNode(name: "Wash Clothes", date: "20", month: "Feb", year: "2023", freqLevel1: "Weekly", freqLevel2: "Every Tuesday", status: "Active", nextTurnLevelDays: "7", nextTurnLevelHours: "08", nextTurnLevelMinutes: "05"),
        TurnNode(name: "Cook Dinner", date: "15", month: "Jan",year:"2023", freqLevel1: "Daily", freqLevel2: "At 6pm", status: "Active", nextTurnLevelDays: "0", nextTurnLevelHours: "2", nextTurnLevelMinutes: "51"),
        TurnNode(name: "Clean TV", date: "12", month: "Jan",year:"2023", freqLevel1: "Monthly", freqLevel2: "Every 1st of the month", status: "Active", nextTurnLevelDays: "04", nextTurnLevelHours: "03", nextTurnLevelMinutes: "00"),
        TurnNode(name: "Cook Dinner", date: "15", month: "Jan",year:"2023", freqLevel1: "Daily", freqLevel2: "At 6pm", status: "Active", nextTurnLevelDays: "0", nextTurnLevelHours: "2", nextTurnLevelMinutes: "51"),
        TurnNode(name: "Clean TV", date: "12", month: "Jan",year:"2023", freqLevel1: "Monthly", freqLevel2: "Every 1st of the month", status: "Active", nextTurnLevelDays: "04", nextTurnLevelHours: "03", nextTurnLevelMinutes: "00"),
        TurnNode(name: "Cook Dinner", date: "15", month: "Jan",year:"2023", freqLevel1: "Daily", freqLevel2: "At 6pm", status: "Active", nextTurnLevelDays: "0", nextTurnLevelHours: "2", nextTurnLevelMinutes: "51"),
        TurnNode(name: "Clean TV", date: "12", month: "Jan",year:"2023", freqLevel1: "Monthly", freqLevel2: "Every 1st of the month", status: "Active", nextTurnLevelDays: "04", nextTurnLevelHours: "03", nextTurnLevelMinutes: "00"),
        TurnNode(name: "Cook Dinner", date: "15", month: "Jan",year:"2023", freqLevel1: "Daily", freqLevel2: "At 6pm", status: "Active", nextTurnLevelDays: "0", nextTurnLevelHours: "2", nextTurnLevelMinutes: "51"),
        TurnNode(name: "Clean TV", date: "12", month: "Jan",year:"2023", freqLevel1: "Monthly", freqLevel2: "Every 1st of the month", status: "Active", nextTurnLevelDays: "04", nextTurnLevelHours: "03", nextTurnLevelMinutes: "00"),
        TurnNode(name: "Clean Room", date: "10", month: "Jan",year:"2023", freqLevel1: "Weekly", freqLevel2: "Every Wednesday", status: "Inactive", nextTurnLevelDays: "0", nextTurnLevelHours: "0", nextTurnLevelMinutes: "00")

    ]
    

    var body: some View {
        ZStack{
            Color(hex: "f3f3f3")
                .ignoresSafeArea()
                VStack{
                
                    HStack{
                        Spacer()
                        Image(systemName: "circle.fill")
                            .foregroundColor(.blue)
                            .font(.system(size:80))
                            .padding()
//                        Spacer()
                        VStack(alignment: .leading, spacing: 0){
                            Text(gName)
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(Color(hex: "333333"))
                            Text("Members: {X}, {Y}, {Z}")
                                .font(.system(size:16))
                                .foregroundColor(Color(hex: "333333"))
                           
                            HStack{
                                
                                Text("Active Turn Events: 15")
                                    .font(.system(size:16))
                            }
                            .frame(maxWidth: .infinity)
//                            .cornerRadius(20, corners: [.topLeft, .bottomRight])
                            .frame(height: 30)
                                .foregroundColor(Color(hex: "ffffff"))
                                .background(Color(hex: "FC5185"))
                                .padding(.top, 20)
                            
                        }
//                        .padding(.trailing, 50)
//                        Spacer()
                        
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color(hex: "3FC1C9"))
//                    .background(Color(hex: "364F6B"))
                    // Spacer()
                    VStack {
    List(Turn) { turns in
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(turns.name)
                        .font(.system(size: 14))  // Reduce the font size
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex: "333333"))
                    Text(turns.freqLevel1)
                        .font(.system(size: 10))  // Reduce the font size
                        .foregroundColor(Color(hex: "333333"))
                    Text(turns.freqLevel2)
                        .font(.system(size: 10))  // Reduce the font size
                        .foregroundColor(Color(hex: "333333"))
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text(turns.date)
                        .font(.system(size: 14))  // Reduce the font size
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex: "333333"))
                    Text(turns.month)
                        .font(.system(size: 10))  // Reduce the font size
                        .foregroundColor(Color(hex: "333333"))
                    Text(turns.year)
                        .font(.system(size: 10))  // Reduce the font size
                        .foregroundColor(Color(hex: "333333"))
                }
            }
            
            if turns.status == "Active" {
                HStack {
                    Text(turns.nextTurnLevelDays)
                        .font(.system(size: 14))  // Reduce the font size
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex: "333333"))
                    Text("Days")
                        .font(.system(size: 10))  // Reduce the font size
                        .foregroundColor(Color(hex: "333333"))
                    Text(turns.nextTurnLevelHours)
                        .font(.system(size: 10))  // Reduce the font size
                        .foregroundColor(Color(hex: "333333"))
                    Text("Hours")
                        .font(.system(size: 10))  // Reduce the font size
                        .foregroundColor(Color(hex: "333333"))
                    Text(turns.nextTurnLevelMinutes)
                        .font(.system(size: 10))  // Reduce the font size
                        .foregroundColor(Color(hex: "333333"))
                    Text("Minutes")
                        .font(.system(size: 10))  // Reduce the font size
                        .foregroundColor(Color(hex: "333333"))
                }
                .padding(5)
                .background(Color(hex: "3FC1C9"))
                .cornerRadius(7)
            } else {
                Text("Turn Event Finished")
                    .font(.system(size: 14))  // Reduce the font size
                    .fontWeight(.bold)
                    .foregroundColor(Color(hex: "333333"))
                    .padding(5)
                    .background(Color.clear)  // Remove the background color
                    .cornerRadius(7)
            }
        }
    }
}

//                    HStack{
//                        Text("19 Apr \n 2023")
//                        //adding box around this text
//                            .font(.system(size: 10))
//                            .fontWeight(.bold)
//                            .foregroundColor(Color(hex: "333333"))
//                            // .padding()
//                            .frame(width: 60, height: 60)
//                            .background(Color(hex: "7AD1D7").opacity(0.5))
//                            // .cornerRadius(20)
//                            
//                        Spacer()
//                    VStack{
//                        
//                        Text("Next Turn")
//                            .font(.system(size: 14))
//                            .fontWeight(.bold)
//                            .foregroundColor(Color(hex: "333333"))
//                        Text("Cook Dinner")
//                            .font(.system(size:12))
//                            .foregroundColor(Color(hex: "333333"))
//                        Text("In 2 hours")
//                            .font(.system(size:12))
//                            .foregroundColor(Color(hex: "333333"))
//                            //adding a box around this text
////                            .padding()  /
//                            // filling the box width to full screen
//                            .frame(maxWidth: .infinity)
//                            .frame(height:20)
//                            .background(Color(hex: "7AD1D7").opacity(0.5))
//                            // .cornerRadius(20)
//
//                            
//                    }
//                    Spacer()
//                    }
                    // placing a divider
                    Divider()
                        
                    
        

                    Spacer()
                    Button("New Turn", action: {
                                    isShowingNewTurnSheet = true
                                })
                                .padding()
                                .frame(width: 300, height: 50)
                                .background(Color(hex:"3FC1C9" ) )
                                .foregroundColor(.white)
                                .cornerRadius(15)
                                .padding(.bottom, 30)
                                .sheet(isPresented: $isShowingNewTurnSheet) {
                                    // Present the new turn sheet view here
                                    Text("hello")
                                }
                    
                // full frame width
                }
                
        }
    }
}

struct InGroupView_Previews: PreviewProvider {
    static var previews: some View {
        InGroupView(gName: "Design Team")
    }
}
