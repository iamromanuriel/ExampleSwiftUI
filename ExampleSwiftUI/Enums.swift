//
//  Enums.swift
//  ExampleSwiftUI
//
//  Created by Roman Uriel on 04/04/25.
//

import SwiftUI

enum ControllType: String{
    case group
    case item
}

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
