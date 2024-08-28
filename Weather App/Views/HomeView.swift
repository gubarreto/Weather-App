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
                    .offset(y: 26)
                
                VStack(spacing: -8) {
                    Text(viewModel.forecast?.name ?? cityName)
                        .font(.largeTitle)
                    
                    Text("\(viewModel.formattedCurrentTemperature)º")
                        .font(.system(size: 96, weight: .thin))
                    
                    Text("Mostly Clear")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundStyle(.secondary)
                    
                    HStack {
                        Text("H:\(viewModel.formattedHighTemperature)º")
                        Text("L:\(viewModel.formattedLowTemperature)º")
                    }
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding(.top, 8)
//                    .shadow(color: )
                    
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
    HomeView()
        .preferredColorScheme(.dark)
}
