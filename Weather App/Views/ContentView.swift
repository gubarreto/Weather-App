//
//  ContentView.swift
//  Weather App
//
//  Created by Gustavo Barreto on 13/08/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        HomeView()
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
