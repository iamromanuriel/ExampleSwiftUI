//
//  Cards.swift
//  ExampleSwiftUI
//
//  Created by Roman Uriel on 24/03/25.
//

import SwiftUI

let listCards = [
    ItemModel(id: 1, title: "Restaurantes", description: "Pide tus platillos favoritos de los mejores restaurantes y recíbelos en minutos.", color: AppColor.blue, icon: "fork.knife"),
    ItemModel(id: 2, title: "Supermercados", description: "Tu súper a domicilio: fácil, rápido y completo.", color: AppColor.purple, icon: "storefront.fill"),
    ItemModel(id: 3, title: "Farmacias", description: "Medicamentos, artículos de cuidado personal y más. Recibe tus compras de farmacia rápidamente.", color: AppColor.green, icon: "cross.case.fill"),
    ItemModel(id: 4, title: "Electrónica", description: "Lo último en tecnología al alcance de tu mano. Pide gadgets, accesorios y más con entrega rápida.", color: AppColor.orange, icon: "macbook.and.iphone"),
    ItemModel(id: 5, title: "Licorerías", description: "Tu selección de licores, vinos y cervezas a domicilio. Ideal para tus reuniones y celebraciones.", color: AppColor.green, icon: "wineglass.fill")
]

struct CardsList: View {
    let columns = [GridItem(.flexible())]
    var body: some View {
        HStack{
            Text("Descubre las mejores ofertas").bold().font(.title2)
            Spacer()
        }.padding(.horizontal, 8)
        
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: columns) {
                ForEach(listCards) { item in
                    Card(item: item)
                }
            }
        }
    }
}

struct Card: View{
    let item: ItemModel
    var body: some View{
        VStack{
            HStack{
                Text(item.title)
                    .padding()
                    .font(.title3)
                    .bold()
                Spacer()
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 40, height: 40)
                        .foregroundColor(item.color.color.opacity(0.1))
                    Image(systemName: item.icon).foregroundColor(item.color.color)
                }.padding(.horizontal)
                
            }
            Text(item.description)
                .foregroundColor(.black.opacity(0.6))
                .font(.footnote)
                .padding(12)
            
            
            
        }.frame(width: 280, height: 180)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(.vertical, 20)
    }
}


#Preview {
    VStack{
        CardsList()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(.backgroundApp)
    
}
