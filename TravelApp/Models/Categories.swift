//
//  Categories.swift
//  TravelApp
//
//  Created by Maaz Khan on 28/06/2024.
//

import Foundation


struct Category: Equatable{
    var title: String
    var icon: String
}


var categories = [
    Category(title: "Popular", icon: "popular"),
    Category(title: "Lake", icon: "lake"),
    Category(title: "Beach", icon: "beach"),
    Category(title: "Mountain", icon: "mountain")
]
