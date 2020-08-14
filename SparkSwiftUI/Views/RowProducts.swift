//
//  RowGames.swift
//  SparkSwiftUI
//
//  Created by Amir on 2020-08-14.
//  Copyright © 2020 spark. All rights reserved.
//

import SwiftUI

struct RowProducts: View {
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Image("main")
                    .resizable()
                    .frame(width: 77 ,height: 77)
                    .cornerRadius(8)
                    .padding(10)
                
                VStack(alignment: .leading) {
                    Text("Samsung Galaxy Note20 Ultra 5G")
                        .foregroundColor(Color.black)
                        .font(.headline)
                    Text("Interest free over on a Mobile $59.99 Rollover Plan")
                        .foregroundColor(Color.gray)
                        .font(.subheadline)
                }
                .padding(10)
                
                Spacer()
            }
            .background(Color.white)
            .cornerRadius(16)
        }
        .listRowBackground(Color.purple)
        .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        .shadow(color: Color.black, radius: 2, x: 0, y: 2)
    }
}
