//
//  HomeScreen.swift
//  ExampleSwiftUI
//
//  Created by Roman Uriel on 01/04/25.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ScrollView {
            CardsList()
            ListScreen()
            ListSimple()
        }
    }
}

#Preview {
    VStack{
        HomeScreen()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(.backgroundApp)
}
