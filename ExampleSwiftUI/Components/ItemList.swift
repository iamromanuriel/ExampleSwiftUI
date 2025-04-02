//
//  ListScreen.swift
//  ExampleSwiftUI
//
//  Created by Roman Uriel on 05/03/25.
//
import SwiftUI


enum AppColor: String, Codable {
    case red
    case blue
    case green
    case yellow
    case purple
            case orange
    case teal

    var color: Color {
        switch self {
        case .red:
            return .red
        case .blue:
            return .blue400
        case .green:
            return .green200
        case .yellow:
            return .yellow
        case .purple:
            return .purple400
        case .orange:
            return .purple
        case .teal:
            return .teal
        }
        
    }
}

struct ItemModel: Identifiable, Codable{
    let id: Int
    let title: String
    let description: String
    let color: AppColor
    let icon: String
}

    let listItems = [
        ItemModel(id: 1, title: "Home", description: "Access to main screen",color: AppColor.blue, icon: "house"),
        ItemModel(id: 2, title: "List", description: "All registros", color: AppColor.teal, icon: "list.bullet"),
        ItemModel(id: 3, title: "Refresh", description: "Description 3", color: AppColor.green, icon: "arrow.triangle.2.circlepath"),
        ItemModel(id: 4, title: "Deleted", description: "Elemente removed", color: AppColor.purple, icon: "trash"),
    ]


let listRestaurant = [
    ItemModel(id: 1, title: "Casa de campo", description: "Desayunos",color: AppColor.blue, icon: "storefront.fill"),
    ItemModel(id: 2, title: "Tac00s", description: "Tacos y ...",color: AppColor.blue, icon: "storefront.fill"),
    ItemModel(id: 3, title: "Cafe 0o", description: "Cafe y ...",color: AppColor.blue, icon: "storefront.fill"),
    ItemModel(id: 4, title: "BurgerMac", description: "Hamburgesas y ...",color: AppColor.blue, icon: "storefront.fill"),
    ItemModel(id: 5, title: "Shuchii", description: "Shushi y ...",color: AppColor.blue, icon: "storefront.fill"),
    ItemModel(id: 6, title: "Pipzzas", description: "Pizza y ...",color: AppColor.blue, icon: "storefront.fill"),
    
]

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
    var body: some View {
        HStack{
            
            ZStack{
                Image(systemName: "person.fill").foregroundColor(.blue)
                Circle().frame(maxWidth: 60).foregroundColor(.blue.opacity(0.3))
            }.padding(.horizontal, 5)
            
            VStack(alignment: .leading){
                Text("CASA DE CAMPO").bold()
                Text("Desayunos ...").foregroundColor(.gray)
                
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
    }
}

struct ListSimple: View {
    let columns = [GridItem(.flexible())]
    
    var body: some View {
        HStack{
            Text("Recientes").bold().font(.title2)
            Spacer()
        }.padding(.horizontal, 8)
        LazyVGrid(columns: columns){
            ForEach(listRestaurant){ value in
                ItemListSimple()
            }
        }
        
    }
}


#Preview {
    ScrollView {
        ListSimple()
    }
    
    
    
}
