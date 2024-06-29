//
//  CategoriesSelectorView.swift
//  TravelApp
//
//  Created by Maaz Khan on 28/06/2024.
//
import SwiftUI
import SwiftUI

struct CategorySelectorView: View {
    @State private var selectedCategory: Category? = categories.first

    var body: some View {
        ScrollView(.horizontal ){
            HStack(spacing: 8) {
                ForEach(0..<categories.count, id: \.self) { index in
                    CategoryButton(category: categories[index], isSelected: categories[index] == selectedCategory) {
                        selectedCategory = categories[index]
                    }
                }
            }
        } .scrollIndicators(.hidden)
    }
}

struct CategoryButton: View {
    var category: Category
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack {
                Image(category.icon)
                    .renderingMode(.template)
                    .font(.system(size: 12, weight: .semibold))
                Text(category.title)
                    .fontWeight(.bold)
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 8)
            .foregroundColor(isSelected ? .white : .gray)
            .background(isSelected ? Color.red : Color.white)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(isSelected ? Color.red : Color.gray, lineWidth: 1)
            )
        }
    }
}

#Preview {
    CategorySelectorView()
}
