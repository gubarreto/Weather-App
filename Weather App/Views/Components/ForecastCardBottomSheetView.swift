//
//  ForecastCardBottomSheetView.swift
//  Weather App
//
//  Created by Gustavo Barreto on 27/08/24.
//

import SwiftUI

struct ForecastCardBottomSheetView: View {
    
    var forecast: Forecast
    var forecastPeriod: ForecastPeriod
    var isActive: Bool = true
    
    var body: some View {
        ZStack {
            
        }
    }
}

#Preview {
    ForecastCardBottomSheetView(forecast: hourlyForecasts[0], forecastPeriod: .hourly)
}
