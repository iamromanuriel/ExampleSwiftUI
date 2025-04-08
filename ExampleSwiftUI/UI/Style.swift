//
//  Style.swift
//  ExampleSwiftUI
//
//  Created by Roman Uriel on 07/04/25.
//

import SwiftUI

struct iosCheckboxToogleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }, label: {
            HStack {
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                configuration.label
            }
        }).foregroundColor(.black)
    }
}
