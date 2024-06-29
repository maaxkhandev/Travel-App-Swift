//
//  TopPlacesSlider.swift
//  TravelApp
//
//  Created by Maaz Khan on 28/06/2024.
//

import Foundation


struct TopPlace: Identifiable{
    var id = UUID()
    var image: String
    var title: String
    var location: String
    var reviews: Double
    var totalReviews: Int
    var isFavorite: Bool
    var distance: Double
    var totalRestaurent: Int
    var description: String
}


let topPlaces = [
    TopPlace(image: "slider1", title: "Mountain View", location: "Colorado, USA", reviews: 4.8, totalReviews: 134, isFavorite: true, distance: 12.5, totalRestaurent: 20, description: "A breathtaking location with stunning mountain views and a variety of outdoor activities. Ideal for hiking and nature enthusiasts. The perfect place to relax and disconnect from the hustle and bustle of everyday life."),
    TopPlace(image: "slider2", title: "Sunny Beach", location: "California, USA", reviews: 4.5, totalReviews: 210, isFavorite: false, distance: 5.3, totalRestaurent: 15, description: "A beautiful beach with golden sands and clear waters. Great for swimming and sunbathing. Numerous beachfront restaurants and cafes to enjoy delicious meals and refreshing drinks."),
    TopPlace(image: "slider3", title: "Historic City", location: "Rome, Italy", reviews: 4.9, totalReviews: 542, isFavorite: true, distance: 8.9, totalRestaurent: 50, description: "A city rich in history and culture with stunning architecture and monuments. Ideal for history buffs and art lovers. Enjoy the vibrant street life and delicious Italian cuisine."),
    TopPlace(image: "slider4", title: "Tropical Paradise", location: "Bali, Indonesia", reviews: 4.7, totalReviews: 389, isFavorite: false, distance: 3.2, totalRestaurent: 25, description: "An exotic island with beautiful beaches, lush greenery, and vibrant culture. Perfect for a relaxing vacation with plenty of activities like surfing, snorkeling, and yoga."),
    TopPlace(image: "slider5", title: "Cosmopolitan City", location: "New York, USA", reviews: 4.6, totalReviews: 764, isFavorite: true, distance: 1.5, totalRestaurent: 100, description: "A bustling city with iconic landmarks, diverse culture, and endless entertainment options. Ideal for urban explorers and foodies. Enjoy world-class museums, theaters, and restaurants."),
    TopPlace(image: "slider6", title: "Serene Lake", location: "Geneva, Switzerland", reviews: 4.8, totalReviews: 295, isFavorite: true, distance: 7.8, totalRestaurent: 30, description: "A peaceful lake surrounded by picturesque mountains and charming towns. Perfect for boating, fishing, and relaxing by the water. Enjoy the scenic views and tranquil atmosphere."),
    TopPlace(image: "slider7", title: "Desert Oasis", location: "Dubai, UAE", reviews: 4.4, totalReviews: 421, isFavorite: false, distance: 10.0, totalRestaurent: 40, description: "A modern city with impressive skyscrapers, luxury shopping, and vibrant nightlife. Ideal for adventure seekers and luxury travelers. Experience the unique desert landscape and thrilling activities."),
    TopPlace(image: "slider8", title: "Cultural Hub", location: "Kyoto, Japan", reviews: 4.9, totalReviews: 318, isFavorite: true, distance: 6.5, totalRestaurent: 45, description: "A city known for its traditional temples, beautiful gardens, and rich cultural heritage. Perfect for those interested in Japanese culture and history. Enjoy the serene atmosphere and exquisite cuisine."),
    TopPlace(image: "slider9", title: "Island Getaway", location: "Maldives", reviews: 4.7, totalReviews: 275, isFavorite: false, distance: 2.3, totalRestaurent: 10, description: "A tropical paradise with crystal-clear waters, white sandy beaches, and luxurious resorts. Ideal for a romantic getaway or a relaxing vacation. Enjoy snorkeling, diving, and stunning sunsets."),
//    TopPlace(image: "slider10", title: "Vibrant City", location: "Barcelona, Spain", reviews: 4.6, totalReviews: 334, isFavorite: true, distance: 4.0, totalRestaurent: 55, description: "A lively city with unique architecture, vibrant street life, and delicious food. Perfect for art and culture lovers. Explore the beautiful beaches, historic sites, and bustling markets."),

]
