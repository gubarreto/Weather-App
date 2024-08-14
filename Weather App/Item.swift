//
//  Item.swift
//  Weather App
//
//  Created by Gustavo Barreto on 13/08/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
