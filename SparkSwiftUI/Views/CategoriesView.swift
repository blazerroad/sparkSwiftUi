//
//  CategoriesView.swift
//  SparkSwiftUI
//
//  Created by Amir on 2020-08-14.
//  Copyright © 2020 spark. All rights reserved.
//

import SwiftUI

struct CategoriesView: View {
    @State private var selected: Int = 0
    let categories: [Categories] = Categories.allCases
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(self.categories, id: \.self) { category in
                    CategoryButton(selection: self.$selected, category: category)
                        .padding(.trailing, 10)
                }
            }
            .padding(.leading)
        }
    }
}


struct CategoryButton: View {
    @Binding var selection: Int
    
    let category: Categories
    var selected: Bool {
        return selection == category.index
    }
    
    let color: Color = Color.purple
    let cornerRadius: CGFloat = 16
    let borderWidth: CGFloat = 2
    let shadowOpacity: Double = 0.25
    
    var body: some View {
        Button(action: {
            self.selection = self.category.index
        }, label: {
            Text(self.category.rawValue)
                .shadow(color: Color.black.opacity(self.selected ? 0 : shadowOpacity), radius: 4, x: 0, y: 4)
                .padding(.vertical, 10)
                .padding(.horizontal, cornerRadius)
                .background(color)
                .cornerRadius(cornerRadius)
                .foregroundColor(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .stroke(Color.white, lineWidth: self.selected ? borderWidth : 0)
                )
                .shadow(color: Color.black.opacity(self.selected ? shadowOpacity : 0), radius: 4, x: 0, y: 4)
        })
        .padding(.vertical)
    }
}

enum Categories: String, CaseIterable {
    case allPhonse = "All phones"
    case broadband = "Broadband"
       case latestDeals = "Latest deals"
    case mySpark = "MySpark"
    case movingHouse = "movingHouse"
    case xtraMail = "Xtra Mail"

}

extension CaseIterable where Self: Equatable {
    var index: Self.AllCases.Index {
        return Self.allCases.firstIndex { self == $0 } ?? Self.allCases.endIndex
    }
}
