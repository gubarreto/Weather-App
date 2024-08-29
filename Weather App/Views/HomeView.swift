//
//  HomeView.swift
//  Weather App
//
//  Created by Gustavo Barreto on 14/08/24.
//

import SwiftUI
import BottomSheet

struct HomeView: View {
    
    @StateObject var viewModel: ForecastViewModel = ForecastViewModel()
    @State private var cityName: String = "Bauru"
    @State var bottomSheetIsPresented = true
    @State var selectedDetent: BottomSheet.PresentationDetent = .medium
    
    let forecast: Forecast
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                Color.background
                    .ignoresSafeArea()
                
                Image(.background)
                    .resizable()
                    .ignoresSafeArea()
                
                Image(.house)
                    .frame(maxHeight: .infinity, alignment: .center)
                    .offset(y: 36)
                
                VStack(spacing: -4) {
                    //Text(viewModel.forecast?.name ?? cityName)
                    Text(forecast.location)
                        .font(.largeTitle)
                    
                    //Text("\(viewModel.formattedCurrentTemperature)º")
                    Text("\(forecast.currentTemperature)º")
                        .font(.system(size: 96, weight: .thin))
                    
                    //Text(viewModel.forecast?.weather[0].description ?? "Not found")
                    Text(forecast.weather.description)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundStyle(.secondary)
                    
                    HStack {
                        Text("\(forecast.highTemperature)º")
                        Text("\(forecast.lowTemperature)º")
                        //Text("H:\(viewModel.formattedHighTemperature)º")
                        //Text("L:\(viewModel.formattedLowTemperature)º")
                    }
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding(.top, 8)
                    
                    Spacer()
                }
                .foregroundStyle(.white)
                .padding(.top)
                
                .sheetPlus(isPresented: $bottomSheetIsPresented,
                           background: Color.clear, main: {
                    ForecastBottomSheetView()
                        .presentationDetentsPlus([.height(244), .medium, .height(600)], selection: $selectedDetent)
                })
                
                CustomTabBar()
            }
            .navigationBarHidden(true)
        }
        .onAppear {
            viewModel.getForecast(for: cityName)
        }
    }
}

#Preview {
    HomeView(forecast: hourlyForecasts[0])
        .preferredColorScheme(.dark)
}
