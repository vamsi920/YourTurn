//
//  HomeCarouselView.swift
//  Yourturn
//
//  Created by Venkata Vamsi Devadula on 3/31/23.
//

import SwiftUI

struct HomeCarouselView: View {
    let colors: [Color] = [.red, .blue, .green, .orange, .purple]
    var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(colors, id: \.self) { color in
                        VStack {
                            Rectangle()
                                .fill(color)
                                .shadow(radius: 5)
                                .cornerRadius(30)
                                .frame(width: 325, height: 645)
                            Text(color.description)
                        }
                    }
                }
                .padding(20)
            }
        }
}

struct HomeCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCarouselView()
    }
}
