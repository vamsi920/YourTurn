//
//  ActivityView.swift
//  Yourturn
//
//  Created by Venkata Vamsi Devadula on 3/31/23.
//

import SwiftUI
struct ActivityNode: Identifiable{
    var id = UUID()
    var name = String()
    var turnName = String()
    var turnGroup = String()
    var turnTime = String()
    var freq = String()
}
struct ActivityView: View {
    @State private var activities = [
        ActivityNode(name: "Design Team", turnName: "Vamsi", turnGroup: "Design Team", turnTime: "10:00 AM", freq: "Daily"),
        ActivityNode(name: "Marketing Squad", turnName: "Vamsi", turnGroup: "Design Team", turnTime: "10:00 AM", freq: "Daily"),
        ActivityNode(name: "Sales Avengers", turnName: "Vamsi", turnGroup: "Design Team", turnTime: "10:00 AM", freq: "Daily"),
        ActivityNode(name: "Product Gurus", turnName: "Vamsi", turnGroup: "Design Team", turnTime: "10:00 AM", freq: "Daily"),
        ActivityNode(name: "Engineering Ninjas", turnName: "Vamsi", turnGroup: "Design Team", turnTime: "10:00 AM", freq: "Daily"),
        ActivityNode(name: "Creative Minds", turnName: "Vamsi", turnGroup: "Design Team", turnTime: "10:00 AM", freq: "Daily"),
        ActivityNode(name: "Innovative Thinkers", turnName: "Vamsi", turnGroup: "Design Team", turnTime: "10:00 AM", freq: "Daily"),
        ActivityNode(name: "Project Mavericks", turnName: "Vamsi", turnGroup: "Design Team", turnTime: "10:00 AM", freq: "Daily"),
        ActivityNode(name: "Strategy Warriors", turnName: "Vamsi", turnGroup: "Design Team", turnTime: "10:00 AM", freq: "Daily"),
        ActivityNode(name: "Development Wizards", turnName: "Vamsi", turnGroup: "Design Team", turnTime: "10:00 AM", freq: "Daily"),
        ActivityNode(name: "Research Geniuses", turnName: "Vamsi", turnGroup: "Design Team", turnTime: "10:00 AM", freq: "Daily"),
        ActivityNode(name: "Analytics Titans", turnName: "Vamsi", turnGroup: "Design Team", turnTime: "10:00 AM", freq: "Daily"),
        ActivityNode(name: "User Experience Masters", turnName: "Vamsi", turnGroup: "Design Team", turnTime: "10:00 AM", freq:"Daily"),
    ]
    var body: some View {
        ZStack{
            Color(hex: "f3f3f3")
                .ignoresSafeArea()
            VStack{
                HStack{
                    Text("Activity")
                        .font(.title2)
                        .foregroundColor(Color(hex: "333333"))
                    Spacer()

                }
                .padding(.horizontal, 50)
                .padding(.top, 25)
                List (activities, id:\.id){ item in 
                HStack{
                    Image(systemName: "circle.fill")
                        .foregroundColor(.pink)
                        .font(.system(size:50))
                    VStack(alignment:.leading){
                        Text("\(item.name) created turns for \(item.turnName) in \(item.turnGroup) at \(item.turnTime) with freq \(item.freq)")
                            .font(.system(size:14))
                            .foregroundColor(Color(hex: "333333"))
                        
                        Text("This is a sample text to represent second line")
                            .font(.system(size:12))

                        
                    }
                    .listRowBackground(Color.clear)
                }
                    .listRowBackground(Color.clear)


                }
                
        }
        .padding(.top, 10)
    }
}
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
