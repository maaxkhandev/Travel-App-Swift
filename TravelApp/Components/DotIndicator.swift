//
//  DotIndicator.swift
//  TravelApp
//
//  Created by Maaz Khan on 28/06/2024.
//

import SwiftUI

struct DotIndicator: View {
    var isActive: Bool
    
    var body: some View {
        Circle()
            .fill(isActive ? Color.accentColor : Color.gray.opacity(0.5))
            .frame(width:  8, height:  8)
            .overlay(
                Circle()
                    .stroke(isActive ? Color.accentColor : Color.gray.opacity(0.5), lineWidth: isActive ? 2 : 0)
                    .frame(width: 16, height: 16)
            )
    }
}

#Preview {
    DotIndicator(isActive: true)
}
