//
//  ListOfGames.swift
//  SparkSwiftUI
//
//  Created by Amir on 2020-08-14.
//  Copyright © 2020 spark. All rights reserved.
//

import SwiftUI

struct ListOfProduct: View {
    var body: some View {
        List {
            RowProducts()
            RowProducts()
            RowProducts()
            RowProducts()
            }.background(Color.purple).offset(x: 0, y: -10)
    }
}

struct ListOfProduct_Previews: PreviewProvider {
    static var previews: some View {
        ListOfProduct()
    }
}
