//
//  HomeHeader.swift
//  TravelApp
//
//  Created by Maaz Khan on 28/06/2024.
//

import SwiftUI

struct HomeHeader: View {
    var body: some View {
        HStack {
            Button(action: {
             
            }) {
                Image("humburger")
                    .resizable()
                    .frame(width: 20, height: 20)
            }
            
            Spacer()
            
            HStack {
                Image("location")
                    .foregroundColor(.red)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Text("Islamabad, Pakistan")
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Image("profile")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .clipShape(Circle())
                .frame(width: 40, height: 40)
                .frame(width: 50, height: 50)
                .background(.white)
                .clipShape(Circle())
               
        }
        
    }
}
