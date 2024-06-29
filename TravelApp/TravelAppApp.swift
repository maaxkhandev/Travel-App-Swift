//
//  TravelAppApp.swift
//  TravelApp
//
//  Created by Maaz Khan on 28/06/2024.
//

import SwiftUI

@main
struct TravelAppApp: App {
    init(){
        UITableView.appearance().backgroundColor = UIColor.clear
    }
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
