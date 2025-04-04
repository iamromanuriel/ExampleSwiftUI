//
//  DetailGroup.swift
//  ExampleSwiftUI
//
//  Created by Roman Uriel on 02/04/25.
//

import SwiftUI

struct DetailProductScreen: View {
    var body: some View {
        ScrollView {
            ListItemListProduct()
        }
        .background(.backgroundApp)
        .navigationTitle(Text("Casa de campo"))
    }
}

#Preview {
    DetailProductScreen()
}
