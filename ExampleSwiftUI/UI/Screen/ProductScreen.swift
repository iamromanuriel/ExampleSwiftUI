//
//  ProductScreen.swift
//  ExampleSwiftUI
//
//  Created by Roman Uriel on 04/04/25.
//
import SwiftUI

struct ProudctScreen: View {
    var body: some View {
        ScrollView {
            CardHeader(type: ControllType.item)
            Divider()
            ListItemOptionPlus()
            Divider()
            
        }
    }
}


#Preview {
    ProudctScreen()
}
