//
//  ForecastWebService.swift
//  Weather App
//
//  Created by Gustavo Barreto on 17/08/24.
//

import Foundation
import Combine

enum ForecastWebServiceError: Error {
    case invalidUrl
    case invalidResponse
    case decodingError
}

protocol ForecastWebServiceProtocol {
    func fetchForecast(for city: String) -> AnyPublisher<Forecast, ForecastWebServiceError>
}

class ForecastWebService: ForecastWebServiceProtocol {
    
    private let baseUrl: String = "https://api.openweathermap.org/data/2.5/weather"
//    private let apiKey: String? = ProcessInfo.processInfo.environment["apiKey"]?.trimmingCharacters(in: .whitespacesAndNewlines)
    private let apiKey: String? = "adb2c1581e0258e3f425de230fbf696c"
    
    func fetchForecast(for city: String) -> AnyPublisher<Forecast, ForecastWebServiceError> {
        guard var urlComponents = URLComponents(string: baseUrl) else {
            return Fail(error: ForecastWebServiceError.invalidUrl).eraseToAnyPublisher()
        }
        
        urlComponents.queryItems = [
            URLQueryItem(name: "q", value: city),
            URLQueryItem(name: "appid", value: apiKey),
            URLQueryItem(name: "units", value: "metric")
        ]
        
        guard let url = urlComponents.url else {
            return Fail(error: ForecastWebServiceError.invalidUrl).eraseToAnyPublisher()
        }
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: Forecast.self, decoder: JSONDecoder())
            .mapError { _ in ForecastWebServiceError.decodingError }
            .eraseToAnyPublisher()
    }
}

