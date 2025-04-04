//
//  Controlls.swift
//  ExampleSwiftUI
//
//  Created by Roman Uriel on 02/04/25.
//

import SwiftUI

enum ControllType: String{
    case group
    case item
}


struct Counter: View {
    var type: ControllType
    @State private var count = 0
    
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .foregroundColor(.black)
                    .frame(width: type == .group ? 40 : 30 , height: type == .group ? 40 : 30)
                
                Button(action: {count -= 1}){
                    Image(systemName: "minus")
                        .foregroundColor(.white)
                }
            }
            
            Text("\(count)")
            
            ZStack {
                Circle()
                    .foregroundColor(.black)
                    .frame(width: type == .group ? 40 : 30, height: type == .group ? 40 : 30)
                
                Button(action: {count += 1}){
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                }
            }
        }
        .padding(8)
        .background( type == .group ? Color.gray.opacity(0.2) : Color.clear)
        .clipShape(RoundedRectangle(cornerRadius: 50))
        
    }
}


#Preview {
    Counter(type: ControllType.item)
}
