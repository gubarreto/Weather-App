//
//  Color+.swift
//  Weather App
//
//  Created by Gustavo Barreto on 14/08/24.
//

import SwiftUI

extension Color {
    static let background = LinearGradient(gradient: Gradient(colors: [Color("Background 1"), Color("Background 2")]), startPoint: .topLeading, endPoint: .bottomTrailing)
    static let bottomSheetBackground = LinearGradient(colors: [Color("Weather Widget Background 1").opacity(0.26), Color("Weather Widget Background 2").opacity(0.26)], startPoint: .topLeading, endPoint: .bottomTrailing)
    static let navBarBackground = LinearGradient(colors: [Color("Weather Widget Background 1").opacity(0.1), Color("Weather Widget Background 2").opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing)
    static let tabBarBackground = LinearGradient(colors: [Color("Weather Widget Background 1").opacity(1), Color("Weather Widget Background 2").opacity(1)], startPoint: .top, endPoint: .bottom)
    static let weatherWidgetBackground = LinearGradient(colors: [Color("Weather Widget Background 1"), Color("Weather Widget Background 2")], startPoint: .leading, endPoint: .trailing)
    static let bottomSheetBorderMiddle = LinearGradient(stops: [.init(color: .white, location: 0), .init(color: .clear, location: 0.5)], startPoint: .top, endPoint: .bottom)
    static let bottomSheetBorderTop = LinearGradient(colors: [.white.opacity(0), .white.opacity(0.3), .white.opacity(0)], startPoint: .leading, endPoint: .trailing)
    static let underline = LinearGradient(colors: [.white.opacity(0), .white, .white.opacity(0)], startPoint: .leading, endPoint: .trailing)
    static let tabBarBorderColor = Color("Tab Bar Border")
    static let forecastCardLinearBackground = Color("Forecast Card Background")
    static let probabilityTextColor = Color("Probability Text")
}
