//
//  DetailGroup.swift
//  ExampleSwiftUI
//
//  Created by Roman Uriel on 02/04/25.
//

import SwiftUI

struct DetailGroupScreen: View {
    var onNavToDetailProduct: () -> Void = {}
    var body: some View {
        ScrollView {
            CardHeader(type: .group)
            ListItemListProduct(onNavToDetailProduct: onNavToDetailProduct)
        }
        .background(.backgroundApp)
    }
}

#Preview {
    DetailGroupScreen()
}
