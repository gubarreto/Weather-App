//
//  View+.swift
//  Weather App
//
//  Created by Gustavo Barreto on 27/08/24.
//

import SwiftUI

extension View {
    func backgroundBlur(radius: CGFloat, opaque: Bool = false) -> some View {
        return self.background(Blur(radius: radius, opaque: opaque))
    }
}
