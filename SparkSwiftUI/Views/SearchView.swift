//
//  SearchView.swift
//  SparkSwiftUI
//
//  Created by Amir on 2020-08-14.
//  Copyright © 2020 spark. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Spacer()
                Text("Welcome Spark")
                    .font(.system(size: 40, weight: .heavy))
                    
                Text("This is sample UI")
                Spacer().frame(height: 16)
                SearchField()
            }
            
        }
        .frame(height: 202)
        .padding(.leading, 20)
        .padding(.trailing, 20)
        .padding(.bottom, 32)
        .background(Color(.white))
        .cornerRadius(32)
        .clipped()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
           SearchView()
       }
}
