//
//  HomeView.swift
//  TravelApp
//
//  Created by Maaz Khan on 28/06/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView(content: {
            ZStack(alignment: .top) {
                Color.theme.background
                    .edgesIgnoringSafeArea(.all)
                  
                    VStack (){
                        HomeHeader()
                        ScrollView {
                            VStack (alignment: .leading){
                                Text("Hi Sara,")
                                Text("Where do you wanna go?")
                                    .font(.system(size: 35))
                                    .foregroundColor(Color.theme.LargeTitleColor)
                                    .bold()
                                    .padding(.top, 2)
                                SliderView()
                                CategorySelectorView()
                                    .padding(.top, 4)
                                
                                TopPlacesSlider()
                                    .padding(.top, 10)
                                
                                    
                            }
                        }
                        
                    }.padding(.horizontal, 20)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
//
        })
    }
}





#Preview {
    HomeView()
}
