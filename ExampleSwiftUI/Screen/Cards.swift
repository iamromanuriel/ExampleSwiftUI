//
//  Cards.swift
//  ExampleSwiftUI
//
//  Created by Roman Uriel on 24/03/25.
//

import SwiftUI

let listCards = [
    ItemModel(id: 1, title: "Inicio", description: "Explora las últimas noticias y actualizaciones.", color: AppColor.blue, icon: "appletv"),
    ItemModel(id: 2, title: "Perfil", description: "Visualiza y edita tu información personal.", color: AppColor.purple, icon: "person"),
    ItemModel(id: 3, title: "Configuración", description: "Ajusta las preferencias de la aplicación.", color: AppColor.green, icon: "gear"),
    ItemModel(id: 4, title: "Mensajes", description: "Comunícate con otros usuarios.", color: AppColor.orange, icon: "message"),
    ItemModel(id: 5, title: "Productos", description: "Descubre nuestros productos destacados.", color: AppColor.green, icon: "cart")
]

struct CardsList: View {
    let columns = [GridItem(.flexible())]
    var body: some View {
        HStack{
            Text("Main features").bold().font(.title2)
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
                    .foregroundColor(.white)
                    .bold()
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 40, height: 40)
                        .foregroundColor(Color.white.opacity(0.3))
                    Image(systemName: item.icon)
                }.padding(.horizontal)
                
            }
            Text("Build and animate an IOS app from scratch 20 SECTIONS - 3 HOURS")
                .foregroundColor(.white.opacity(0.8))
                .font(.footnote)
                .padding(.horizontal, 6)
            
            HStack{
                Image(systemName: "person.crop.circle.fill").foregroundColor(.white.opacity(0.7))
                Spacer()
            }.padding()
            
        }.frame(width: 250 )
            .background(item.color.color.gradient)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(.vertical, 20)
    }
}


#Preview {
    CardsList()
}
