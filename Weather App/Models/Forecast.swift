// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let forecast = try? JSONDecoder().decode(Forecast.self, from: jsonData)

import Foundation

//MARK: - Forecast Period
enum ForecastPeriod: Codable {
    case hourly
    case weekly
}

struct Forecast: Identifiable, Codable {
    let id: Int
    let time: String
    let currentTemperature: Double
    let highTemperature: Double
    let lowTemperature: Double
    let location: String
    let weather: WeatherCondition
    let period: ForecastPeriod
}

let hourlyForecasts: [Forecast] = [
    Forecast(id: 1, time: "08:00", currentTemperature: 22, highTemperature: 24, lowTemperature: 20, location: "New York", weather: .sunny, period: .hourly),
    Forecast(id: 2, time: "09:00", currentTemperature: 23, highTemperature: 25, lowTemperature: 21, location: "New York", weather: .sunny, period: .hourly),
    Forecast(id: 3, time: "10:00", currentTemperature: 25, highTemperature: 28, lowTemperature: 22, location: "New York", weather: .cloudy, period: .hourly),
    Forecast(id: 4, time: "11:00", currentTemperature: 26, highTemperature: 29, lowTemperature: 23, location: "New York", weather: .rainy, period: .hourly),
    Forecast(id: 5, time: "12:00", currentTemperature: 27, highTemperature: 30, lowTemperature: 24, location: "New York", weather: .stormy, period: .hourly)
]

let weeklyForecasts: [Forecast] = [
    Forecast(id: 6, time: "Monday", currentTemperature: 28, highTemperature: 30, lowTemperature: 25, location: "New York", weather: .sunny, period: .weekly),
    Forecast(id: 7, time: "Tuesday", currentTemperature: 27, highTemperature: 29, lowTemperature: 24, location: "New York", weather: .cloudy, period: .weekly),
    Forecast(id: 8, time: "Wednesday", currentTemperature: 26, highTemperature: 28, lowTemperature: 23, location: "New York", weather: .rainy, period: .weekly),
    Forecast(id: 9, time: "Thursday", currentTemperature: 25, highTemperature: 27, lowTemperature: 22, location: "New York", weather: .stormy, period: .weekly),
    Forecast(id: 10, time: "Friday", currentTemperature: 24, highTemperature: 26, lowTemperature: 21, location: "New York", weather: .windy, period: .weekly)
]

/*
// MARK: - Forecast
struct Forecast: Codable {
    let coord: Coord
    let weather: [Weather]
    let base: String
    let main: Main
    let visibility: Int
    let wind: Wind
    let clouds: Clouds
    let dt: Int
    let sys: Sys
    let timezone, id: Int
    let name: String
    let cod: Int
}

// MARK: - Clouds
struct Clouds: Codable {
    let all: Int
}

// MARK: - Coord
struct Coord: Codable {
    let lon, lat: Double
}

// MARK: - Main
struct Main: Codable {
    let temp, feelsLike, tempMin, tempMax: Double
    let pressure, humidity, seaLevel, grndLevel: Int

    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
        case tempMin = "temp_min"
        case tempMax = "temp_max"
        case pressure, humidity
        case seaLevel = "sea_level"
        case grndLevel = "grnd_level"
    }
}

// MARK: - Sys
struct Sys: Codable {
    let type, id: Int
    let country: String
    let sunrise, sunset: Int
}

// MARK: - Weather
struct Weather: Codable {
    let id: Int
    let main, description, icon: String
}
 */

//MARK: - Weather Condition

enum WeatherCondition: Codable {
    case clear
    case cloudy
    case rainy
    case snowy
    case stormy
    case sunny
    case sunnyRain
    case tornado
    case windy
    
    var description: String {
        switch self {
        case .clear:
            return "Clear"
        case .cloudy:
            return "Cloudy"
        case .rainy:
            return "Mid Rain"
        case .snowy:
            return "Snowy"
        case .stormy:
            return "Showers"
        case .sunny:
            return "Sunny"
        case .sunnyRain:
            return "Sunny Rain"
        case .tornado:
            return "Tornado"
        case .windy:
            return "Fast Wind"
        }
    }
    
    var icon: String {
        switch self {
        case .clear:
            return "Moon"
        case .cloudy:
            return "Cloud"
        case .rainy:
            return "Moon cloud mid rain"
        case .snowy:
            return "Snowy"
        case .stormy:
            return "Sun cloud angled rain"
        case .sunnyRain:
            return "Sun cloud mid rain"
        case .sunny:
            return "Sun"
        case .tornado:
            return "Tornado"
        case .windy:
            return "Moon cloud fast wind"
        }
    }
}

// MARK: - Wind
struct Wind: Codable {
    let speed: Double
    let deg: Int
}
