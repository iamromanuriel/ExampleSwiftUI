//
//  Cards.swift
//  ExampleSwiftUI
//
//  Created by Roman Uriel on 24/03/25.
//

import SwiftUI

struct CardsList: View {
    let columns = [GridItem(.flexible())]
    var body: some View {
        HStack{
            
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

struct CardHeader: View {
    var type: ControllType
    
    var body: some View {
        VStack(alignment:.center, spacing: 8){
            VStack(){}.frame(maxWidth:.infinity, minHeight: 200).background(.teal)
            Text("Casa de campo").font(.title3).bold()
            if(type == .item){
                HStack{
                    Text("$74.99")
                    Text("$85.99")
                        .foregroundColor(.gray)
                        .strikethrough(true)
                    ZStack{
                        Text("-15%")
                            .foregroundColor(.white)
                            .padding(.horizontal, 8)
                    }
                    .background(.red)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                }
                
            }
            Text("Descubre las mejores ofertas").font(.caption).foregroundColor(.gray)
        }
    }
}

struct CardItemProduct: View {
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing){
                Rectangle()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .foregroundColor(.teal)
                ZStack{
                    Circle().fill(.white).frame(width: 30, height: 30)
                    Image(systemName: "plus").foregroundColor(.black)
                }.padding(8)
            }
            
            Text("Galleta de avena").font(.footnote).foregroundColor(.black).bold()
            Text("$9.99").foregroundColor(.gray)
        }
        
    }
}


#Preview {
    CardItemProduct()
    
}
