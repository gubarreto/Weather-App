//
//  WeatherView.swift
//  Weather App
//
//  Created by Gustavo Barreto on 14/08/24.
//

import SwiftUI

struct WeatherView: View {
    
    let forecast: Forecast
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            Trapezoid()
                .fill(Color.forecastCardLinearBackground)
                .frame(height: 220)
                .cornerRadius(16)
            
            HStack(alignment: .bottom) {
                VStack(alignment: .leading, spacing: 4) {
//                    Text("\(forecast.main.temp)º")
                    Text("\(forecast.currentTemperature)º")
                        .font(.system(size: 72, weight: .regular))
                        .padding(.bottom, 30)
                    
                    HStack(spacing: 12) {
                        //Text("H:\(forecast.main.tempMax)º")
                        //Text("L:\(forecast.main.tempMin)º")
                        Text("\(forecast.highTemperature)º")
                        Text("\(forecast.lowTemperature)º")
                    }
                    .foregroundStyle(.secondary)
                    
                    //Text("\(forecast.name)")
                    Text("\(forecast.location)")
                        .font(.body)
                        .lineLimit(1)
                }
                
                Spacer()
                
                VStack(alignment: .trailing, spacing: 0) {
//                    Image("\(forecast.)")
//                        .resizable()
//                        .scaledToFit()
//                        .offset(y: -10)
                    
                    //Text("\(forecast.weather[0].main)")
                    Text("\(forecast.weather.description)")
                        .padding(.trailing)
                }
            }
            .padding([.leading, .bottom])
        }
        .frame(width: .infinity, height: 220, alignment: .bottom)
    }
}
