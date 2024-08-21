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
    
    func getForecast(for city: String) {
        // Get forecast from forecastWebService
        forecastWebService.fetchForecast(for: city)
            .sink { [weak self] error in
                print(error)
            } receiveValue: { [weak self] forecast in
                print(forecast)
            }
            .store(in: &cancellables)
    }
}
