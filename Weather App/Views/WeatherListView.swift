//
//  WeatherView.swift
//  Weather App
//
//  Created by Gustavo Barreto on 14/08/24.
//

import SwiftUI

struct WeatherListView: View {
    var body: some View {
        ZStack {
            
            Color.background
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
//                    ForEach(forecasts) { forecast in
//                        WeatherView(forecast: forecast)
//                            .padding(.horizontal)
//                            .padding(.vertical, 8)
//                    }
                }
            }
        }
    }
}

#Preview {
    WeatherListView()
}
