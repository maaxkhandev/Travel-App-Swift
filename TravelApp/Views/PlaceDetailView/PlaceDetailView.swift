//
//  PlaceDetailView.swift
//  TravelApp
//
//  Created by Maaz Khan on 28/06/2024.
//

import SwiftUI

struct PlaceDetailView: View {
    
    var place: TopPlace
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color.theme.background
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                PlaceDetailViewHeader(place: place)
                    ScrollView {
                        VStack (alignment: .leading) {
                            HStack{
                                Text(place.title)
                                    .font(.system(size: 35))
                                    .foregroundColor(Color.theme.LargeTitleColor)
                                    .bold()
                                
                                Spacer()
                                roundedButton(icon: "heart.fill", onPress: {
                                   
                                })
                                
                            }
                            
                            HStack{
                            Image(systemName: "mappin.and.ellipse")
                                    .foregroundColor(.accent)
                                Text(place.location)
                                    .font(.subheadline)
                            }
                            
                            HStack(spacing: 20) {
                                InfoCard(icon: "star.fill", iconColor: .red, title: "Rating", subtitle: "\(place.totalReviews)")
                                InfoCard(icon: "location.fill", iconColor: .blue, title: "Distance", subtitle: "\(place.distance) km")
                                InfoCard(icon: "building.2.fill", iconColor: .green, title: "Restaurant", subtitle: "\(place.totalRestaurent) avail.")
                                   }
                            
                            Text(place.description)
                                .font(.body)
                                .padding(.top, 20)
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text("Book A Trip")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .bold()
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,minHeight: 55)
                                    .background(.accent)
                                    .cornerRadius(10)
                            })
                                
                        }.padding(.horizontal)
                    }
            }
              
        }.navigationBarHidden(true)
    }
}


struct PlaceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceDetailView(place: topPlaces[1])
    }
}
