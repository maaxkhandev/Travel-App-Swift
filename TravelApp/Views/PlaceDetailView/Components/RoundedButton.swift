//
//  RoundedButton.swift
//  TravelApp
//
//  Created by Maaz Khan on 28/06/2024.
//

import SwiftUI

struct roundedButton: View{
    var icon: String
    var iconColor: Color?
    var onPress: () -> Void
   
    
    var body: some View{
        Button(action: onPress) {
            Image(systemName: icon)
                .padding(14)
                .background(Color.white.opacity(0.7))
                .clipShape(Circle())
                .foregroundColor(iconColor ?? Color.accentColor)
                .padding([.top, .trailing], 10)
        }
    }
}
