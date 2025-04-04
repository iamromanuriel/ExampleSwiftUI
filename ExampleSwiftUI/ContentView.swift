//
//  ContentView.swift
//  ExampleSwiftUI
//
//  Created by Roman Uriel on 05/03/25.
//

import SwiftUI

enum AppRoute: Hashable {
    case detail
    
}

struct ContentView: View {
    
    
    var body: some View {
        HomeScreen()
            .background(.backgroundApp)
        
    }
}

#Preview {
    ContentView()
}
