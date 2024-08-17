//
//  Weather.swift
//  Weather App
//
//  Created by Gustavo Barreto on 14/08/24.
//

import Foundation

struct Forecast: Identifiable, Codable {
    let id: Int
    let currentTemperature: Int
    let highTemperature: Int
    let lowTemperature: Int
    let location: String
    let weather: Weather
}

enum ForecastPeriod {
    case hourly
    case weekly
}

let forecasts: [Forecast] = [
    Forecast(id: 1, currentTemperature: 28, highTemperature: 30, lowTemperature: 25, location: "New York", weather: .windy),
    Forecast(id: 2, currentTemperature: 18, highTemperature: 25, lowTemperature: 10, location: "Berlin", weather: .rainly),
    Forecast(id: 3, currentTemperature: 22, highTemperature: 30, lowTemperature: 18, location: "Rome", weather: .stormy),
    Forecast(id: 4, currentTemperature: 7, highTemperature: 10, lowTemperature: 3, location: "Madrid", weather: .sunnyRain),
    Forecast(id: 5, currentTemperature: 32, highTemperature: 35, lowTemperature: 25, location: "Rio de Janeiro", weather: .tornado),
]
