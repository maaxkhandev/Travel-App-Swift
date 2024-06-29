//
//  ProductDetailViewHeader.swift
//  TravelApp
//
//  Created by Maaz Khan on 28/06/2024.
//

import SwiftUI

struct PlaceDetailViewHeader: View {
    @Environment(\.presentationMode) var presentationMode
    var place: TopPlace
    var body: some View {
        GeometryReader { geometry in
            ZStack (alignment: .topLeading){
                Image(place.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width, height: 420)
                    .cornerRadius(35, corners: [.bottomLeft, .bottomRight])
                    .shadow(radius: 15)
                
                    roundedButton(icon: "chevron.left",
                                  iconColor: .secondary , onPress: {
                        presentationMode.wrappedValue.dismiss()
                    })
                   
                .padding(.horizontal , 20)
                    .padding(.top, 30)
                
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}
