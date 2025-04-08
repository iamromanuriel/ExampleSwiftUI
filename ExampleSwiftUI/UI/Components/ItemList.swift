//
//  ListScreen.swift
//  ExampleSwiftUI
//
//  Created by Roman Uriel on 05/03/25.
//
import SwiftUI

struct ListScreen: View {
    let columns = [GridItem(.flexible())]
    
    var body: some View {
        HStack{
            Text("Other options").bold().font(.title2)
            Spacer()
        }.padding(.horizontal, 8)
        LazyVGrid(columns: columns){
            ForEach(listItems){ value in
                ItemList(item: value).padding(12)
            }
        }
        
    }
}

struct ItemList: View {
    var item: ItemModel
    
    var body: some View {
        HStack () {
            VStack(alignment: .leading){
                Text(item.title)
                    .font(.title3)
                    .bold()
                
                Text(item.description)
                    .font(.body)
            }
            .padding(20)
            
            Spacer()
            
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color.white.opacity(0.3))
                
                Image(systemName: item.icon)
            }.padding()
        }
        .frame(maxWidth:.infinity)
        .background(item.color.color)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .foregroundColor(.white)
        .shadow( color: item.color.color.opacity(0.3), radius: 10, x: 20, y: 10)
    }
}

struct ItemListSimple: View {
    var item: ItemModel
    var onClick: () -> Void
    
    var body: some View {
        HStack{
            
            ZStack{
                Image(systemName: "person.fill").foregroundColor(item.color.color)
                Circle().frame(maxWidth: 50).foregroundColor(item.color.color.opacity(0.3))
            }.padding(.horizontal, 5)
            
            VStack(alignment: .leading){
                Text(item.title).bold()
                Text(item.description).foregroundColor(.gray)
                
            }.padding()
            Spacer()
            
            VStack(alignment: .trailing){
                Text("Hace 3 dias")
                ZStack{
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                    Text("4.5").font(.caption)
                }
            }.padding(.horizontal, 16)
            
        }
        .onTapGesture {
            onClick()
        }
    }
    
}

struct ItemListProduct: View {
    var onNavToDetailProduct: () -> Void
    
    var body: some View {
        HStack{
            ZStack{
                Image(systemName: "cup.and.saucer.fill").padding()
            }
            .frame(maxWidth: 80, maxHeight: 80)
            .background(.blue400.opacity(0.6))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Spacer()
            
            VStack(alignment: .leading){
                Text("Cafe expreso").bold()
                Text("Vaso de café expreso de 200 ml")
                HStack(alignment: .center){
                    Text("$75.99").foregroundColor(.gray)
                    Counter(type: ControllType.item)
                }
            }
        }
        .onTapGesture {
            onNavToDetailProduct()
        }
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding(.horizontal, 6)
        
    }
}

struct ItemListOptionPlus: View{
    @State private var isOn: Bool = false
    var body: some View{
        HStack{
            VStack(alignment: .leading){
                Text("Extra crema").font(.callout).bold()
                Text("+MXN 10.00").font(.footnote).foregroundColor(.gray)
            }
            Spacer()
            Toggle("", isOn: $isOn)
                .toggleStyle(iosCheckboxToogleStyle())
            
            
        }.padding()
    }
}



#Preview {
    ItemListOptionPlus()
    /*ScrollView{
        
    }.background(.backgroundApp)*/
    
}
