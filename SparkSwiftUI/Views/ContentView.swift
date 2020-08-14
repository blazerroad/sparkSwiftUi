//
//  ContentView.swift
//  SparkSwiftUI
//
//  Created by Amir on 2020-08-14.
//  Copyright © 2020 spark. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       VStack {
                   SearchView()
                   CategoriesView()
                   HighlightedCardView()
                   ListOfProduct()
               }.background(Color.purple).edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
