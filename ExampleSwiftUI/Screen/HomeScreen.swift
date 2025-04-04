//
//  HomeScreen.swift
//  ExampleSwiftUI
//
//  Created by Roman Uriel on 01/04/25.
//

import SwiftUI

struct HomeScreen: View {
    
    @State private var navigationPath = NavigationPath()
    var body: some View {
            NavigationStack(path: $navigationPath) {
                ScrollView {
                    CardsList()
                    ListScreen()
                    ListSimple() {
                        navigationPath.append(AppRoute.detail)
                    }
                }
                .background(.backgroundApp)
                .navigationTitle("App Compras")
                .navigationDestination(for: AppRoute.self) { route in
                    switch route {
                    case .detail:
                        DetailProductScreen()
                    }
                }
            }
        }
}

#Preview {
    VStack{
        HomeScreen()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(.backgroundApp)
}
