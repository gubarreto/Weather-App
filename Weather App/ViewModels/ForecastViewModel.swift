//
//  ForecastViewModel.swift
//  Weather App
//
//  Created by Gustavo Barreto on 17/08/24.
//

import SwiftUI
import Combine

class ForecastViewModel: ObservableObject {
    
    @Published var forecast: Forecast?
    @Published var errorMessage: String?
    
    private let forecastWebService: ForecastWebServiceProtocol
    private var cancellables: Set<AnyCancellable> = Set<AnyCancellable>()
    
    init(forecastWebService: ForecastWebServiceProtocol = ForecastWebService()) {
        self.forecastWebService = forecastWebService
    }
    
    var formattedCurrentTemperature: String {
        //return formatTemperature(forecast?.main.temp)
        return formatTemperature(forecast?.currentTemperature)
    }
    
    var formattedHighTemperature: String {
        //return formatTemperature(forecast?.main.tempMax)
        return formatTemperature(forecast?.highTemperature)
    }
    
    var formattedLowTemperature: String {
        //return formatTemperature(forecast?.main.tempMin)
        return formatTemperature(forecast?.lowTemperature)
    }
    
    func getForecast(for city: String) {
        // Get forecast from forecastWebService
        forecastWebService.fetchForecast(for: city)
            .receive(on: DispatchQueue.main)
            .sink { [weak self] error in
                print(error)
            } receiveValue: { [weak self] forecast in
                self?.forecast = forecast
            }
            .store(in: &cancellables)
    }
    
    private func formatTemperature(_ temperature: Double?) -> String {
        guard let temperature else {return String()}
        return String(format: "%.0f", temperature)
    }
}
