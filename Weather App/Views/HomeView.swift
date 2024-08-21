//
//  HomeView.swift
//  Weather App
//
//  Created by Gustavo Barreto on 14/08/24.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel: ForecastViewModel = ForecastViewModel()
    @State private var cityName: String = "Montreal"
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                Color.background
                    .ignoresSafeArea()
                
                Image(.background)
                    .resizable()
                    .ignoresSafeArea()
                
                Image(.house)
                    .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .bottom)
                
                VStack(spacing: -8) {
                    Text(cityName)
                        .font(.largeTitle)
                    
                    Text("19º")
                        .font(.system(size: 96, weight: .thin))
                    
                    Text("Mostly Clear")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundStyle(.secondary)
                    
                    HStack {
                        Text("H:24º")
                        Text("L:18º")
                    }
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding(.top, 8)
                    
                    Spacer()
                }
                .foregroundStyle(.white)
                .padding(.top, 32)
                
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
