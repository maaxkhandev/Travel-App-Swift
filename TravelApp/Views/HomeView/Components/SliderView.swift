//
//  SliderView.swift
//  TravelApp
//
//  Created by Maaz Khan on 28/06/2024.
//

import SwiftUI

struct SliderView: View {
    @State private var currentPage = 0
      
    var body: some View {
     
        VStack {
                   TabView(selection: $currentPage) {
                       ForEach(0..<topPlaces.count, id: \.self) { index in
                           SliderItemView(topPlace: topPlaces[index])
                               .tag(index)
                       }
                   }
                   .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                   
                   HStack {
                       ForEach(0..<topPlaces.count, id: \.self) { index in
                         DotIndicator(isActive: index == currentPage)
                               
                       }
                   }
            Spacer()
        }
            .frame(height: 230)
            .onTapGesture {
                
            }
    }
}

#Preview {
    SliderView()
}
