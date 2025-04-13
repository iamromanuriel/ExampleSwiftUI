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

struct ListProductH: View {
    let columns = [GridItem(.flexible())]
    var body: some View {
        HStack{
            Text("Acompañalo con").font(.title3).bold().padding(.horizontal, 8)
            Spacer()
        }
        
        ScrollView (.horizontal, showsIndicators: false){
            LazyHGrid(rows:columns){
                ForEach(1..<6){ item in
                    CardItemProduct().padding(.horizontal, 10)
                }
            }
        }
    }
}

struct ListItemListProductSmall: View {
    let columns = [GridItem(.flexible())]
    var body: some View {
        HStack{
            Text("Otras opciones").font(.title3).bold().padding(.horizontal, 8)
            Spacer()
        }
        LazyVGrid(columns: columns){
            ForEach(listItems){ item in
                ItemListProduct(onNavToDetailProduct: {})
            }
        }
    }
}

#Preview {
    ListItemListProductSmall()
    
}
