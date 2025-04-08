//
//  Lists.swift
//  ExampleSwiftUI
//
//  Created by Roman Uriel on 04/04/25.
//

import SwiftUI

struct ListSimple: View {
    var onClick: () -> Void
    let columns = [GridItem(.flexible())]
    
    var body: some View {
        HStack{
            Text("Recientes").bold().font(.title2)
            Spacer()
        }.padding(.horizontal, 8)
        LazyVGrid(columns: columns){
            ForEach(listRestaurant){ item in
                ItemListSimple(item: item){
                    onClick()
                }
            }
        }
        
    }
}


struct ListItemListProduct: View {
    var onNavToDetailProduct: () -> Void
    let columns = [GridItem(.flexible())]
    var body: some View {
        LazyVGrid(columns: columns){
            ForEach(listRestaurant){ item in
                ItemListProduct(onNavToDetailProduct: onNavToDetailProduct)
            }
        }
    }
}

struct ListItemOptionPlus: View {
    let columns = [GridItem(.flexible())]
    var body: some View {
        LazyVGrid(columns: columns){
            ForEach(1..<4){ item in
                ItemListOptionPlus()
            }
        }
    }
}


#Preview {
    ListItemListProduct(onNavToDetailProduct: {})
}
