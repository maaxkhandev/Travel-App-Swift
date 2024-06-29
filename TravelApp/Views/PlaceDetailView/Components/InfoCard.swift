//
//  InfoCard.swift
//  TravelApp
//
//  Created by Maaz Khan on 28/06/2024.
//

import SwiftUI

struct InfoCard: View {
    var icon: String
    var iconColor: Color
    var title: String
    var subtitle: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(iconColor)
                .font(.system(size: 18))
                .padding(8)
                .background(Circle().fill(Color.white.opacity(0.7)))
            
            VStack (alignment: .leading, spacing: 4){
                Text(title)
                    .font(.caption2)
                
                Text(subtitle)
                    .font(.system(size: 14))
                    .bold()
                
                
        
            }
        }.padding(.top, 4)
       
    }
}
