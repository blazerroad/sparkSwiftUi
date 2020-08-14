//
//  SearchField.swift
//  SparkSwiftUI
//
//  Created by Amir on 2020-08-14.
//  Copyright © 2020 spark. All rights reserved.
//


import SwiftUI

struct SearchField: View {
    @State var searchQuery: String = ""
    var backgroundColor = Color(red: (231 / 255), green: (231 / 255), blue: (231 / 255))
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            TextField("Search", text: $searchQuery).textFieldStyle(PlainTextFieldStyle()).padding()
            Image("search-icon").frame(width: 32, height: 32)
        }
        .frame(height: 36)
        .padding(.leading, 0)
        .padding(.trailing, 8)
        .background(backgroundColor)
        .cornerRadius(4)
        .clipped()
    }
}
