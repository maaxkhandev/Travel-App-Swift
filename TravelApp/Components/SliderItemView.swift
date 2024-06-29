//
//  SliderItemView.swift
//  TravelApp
//
//  Created by Maaz Khan on 28/06/2024.
//

import SwiftUI

struct SliderItemView: View {
    var topPlace: TopPlace

    var body: some View {
        NavigationLink(destination: PlaceDetailView(place: topPlace)) {
            ZStack(alignment: .bottomLeading) {
                Image(topPlace.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width - 40, height: 200)
                    .clipped()
                    .overlay(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.black.opacity(0.5), Color.clear]),
                            startPoint: .bottom,
                            endPoint: .center
                        )
                    ).cornerRadius(15)

                
                VStack(alignment: .leading) {
                    Text(topPlace.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text(topPlace.location)
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
                .padding()
            }
            .padding(.horizontal, 20)
        }
        
       
    }
}

#Preview {
    SliderItemView(topPlace: topPlaces[2])
}

