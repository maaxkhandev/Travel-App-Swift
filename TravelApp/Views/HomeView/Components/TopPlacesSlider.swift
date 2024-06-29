//
//  TopPlacesSlider.swift
//  TravelApp
//
//  Created by Maaz Khan on 28/06/2024.
//

import SwiftUI

struct TopPlacesSlider: View {

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                ForEach(topPlaces) { place in
                    
                    NavigationLink(destination: PlaceDetailView(place: place)) {
                        CardView(place: place)
                            .frame(width: 250)
                    }
                   
                }
            }
        }
    }
}


struct CardView: View {
    var place: TopPlace

    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .topTrailing) {
                Image(place.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 120)
                    .clipped()
                    .cornerRadius(15)
                    .padding([.horizontal, .top] , 8)

                Button(action: {}) {
                    Image(systemName: place.isFavorite ? "heart.fill" : "heart")
                        .padding(10)
                        .background(Color.white.opacity(0.7))
                        .clipShape(Circle())
                        .padding([.top, .trailing], 10)
                }
            }

            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(place.title)
                        .font(.headline)
                        .lineLimit(1)
                        .foregroundColor(Color.theme.LargeTitleColor)

                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundColor(.red)
                        Text(place.location)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .lineLimit(1)
                    }
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.orange)
                    Text(String(format: "%.1f", place.reviews))
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }.padding([.horizontal, .bottom])
        }
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}

