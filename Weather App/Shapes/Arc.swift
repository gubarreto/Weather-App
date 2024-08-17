//
//  Arc.swift
//  Weather App
//
//  Created by Gustavo Barreto on 14/08/24.
//

import SwiftUI

struct Arc: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: .init(x: rect.minX - 1, y: rect.minY))
        path.addQuadCurve(to: CGPoint(x: rect.maxX + 1, y: rect.minY), control: CGPoint(x: rect.midX, y: rect.midY))
        path.addLine(to: .init(x: rect.maxX + 1, y: rect.maxY + 1))
        path.addLine(to: .init(x: rect.minX - 1, y: rect.maxY + 1))
        path.closeSubpath()
        return path
    }
}
