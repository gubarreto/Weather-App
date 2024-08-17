//
//  Color+.swift
//  Weather App
//
//  Created by Gustavo Barreto on 14/08/24.
//

import SwiftUI

extension Color {
    static let background = LinearGradient(gradient: Gradient(colors: [Color("Background 1"), Color("Background 2")]), startPoint: .topLeading, endPoint: .bottomTrailing)
    static let forecastCardLinearBackground = LinearGradient(colors: [Color("Weather Widget Background 1"), Color("Weather Widget Background 2")], startPoint: .leading, endPoint: .trailing)
}
