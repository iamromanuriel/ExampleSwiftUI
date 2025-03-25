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
            return .blue
        case .green:
            return .green
        case .yellow:
            return .yellow
        case .purple:
            return .purple
        case .orange:
            return .orange
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
        ItemModel(id: 4, title: "Deleted", description: "Elemente removed", color: AppColor.red, icon: "trash"),
    ]

struct ListScreen: View {
    let columns = [GridItem(.flexible())]
    
    var body: some View {
        ScrollView{
            CardsList()
            LazyVGrid(columns: columns){
                ForEach(listItems){ value in
                    ItemList(item: value).padding(12)
                }
            }
        }
    }
}

struct ItemList: View {
    var item: ItemModel
    
    var body: some View {
        HStack {
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

#Preview {
    ItemList(
        item: ItemModel(id: 1, title: "Item 1", description: "Description 1", color: AppColor.blue, icon: "house")
    ).padding(20)
}
