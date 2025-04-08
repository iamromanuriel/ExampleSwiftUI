//
//  Data.swift
//  ExampleSwiftUI
//
//  Created by Roman Uriel on 07/04/25.
//

//  Models
struct ItemModel: Identifiable, Codable{
    let id: Int
    let title: String
    let description: String
    let color: AppColor
    let icon: String
}

//ListAndGroup
let listCards = [
    ItemModel(id: 1, title: "Restaurantes", description: "Pide tus platillos favoritos de los mejores restaurantes y recíbelos en minutos.", color: AppColor.blue, icon: "fork.knife"),
    ItemModel(id: 2, title: "Supermercados", description: "Tu súper a domicilio: fácil, rápido y completo.", color: AppColor.purple, icon: "storefront.fill"),
    ItemModel(id: 3, title: "Farmacias", description: "Medicamentos, artículos de cuidado personal y más. Recibe tus compras de farmacia rápidamente.", color: AppColor.green, icon: "cross.case.fill"),
    ItemModel(id: 4, title: "Electrónica", description: "Lo último en tecnología al alcance de tu mano. Pide gadgets, accesorios y más con entrega rápida.", color: AppColor.orange, icon: "macbook.and.iphone"),
    ItemModel(id: 5, title: "Licorerías", description: "Tu selección de licores, vinos y cervezas a domicilio. Ideal para tus reuniones y celebraciones.", color: AppColor.green, icon: "wineglass.fill")
]

let listRestaurant = [
    ItemModel(id: 1, title: "Casa de campo", description: "Desayunos",color: AppColor.blue, icon: "storefront.fill"),
    ItemModel(id: 2, title: "Tac00s", description: "Tacos y ...",color: AppColor.teal, icon: "storefront.fill"),
    ItemModel(id: 3, title: "Cafe 0o", description: "Cafe y ...",color: AppColor.blue, icon: "storefront.fill"),
    ItemModel(id: 4, title: "BurgerMac", description: "Hamburgesas y ...",color: AppColor.blue, icon: "storefront.fill"),
    ItemModel(id: 5, title: "Shuchii", description: "Shushi y ...",color: AppColor.green, icon: "storefront.fill"),
    ItemModel(id: 6, title: "Pipzzas", description: "Pizza y ...",color: AppColor.teal, icon: "storefront.fill")
]

let listItems = [
    ItemModel(id: 1, title: "Home", description: "Access to main screen",color: AppColor.blue, icon: "house"),
    ItemModel(id: 2, title: "List", description: "All registros", color: AppColor.teal, icon: "list.bullet"),
    ItemModel(id: 3, title: "Refresh", description: "Description 3", color: AppColor.green, icon: "arrow.triangle.2.circlepath"),
    ItemModel(id: 4, title: "Deleted", description: "Elemente removed", color: AppColor.purple, icon: "trash"),
]


