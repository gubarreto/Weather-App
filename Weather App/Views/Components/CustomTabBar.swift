//
//  CustomTabBar.swift
//  Weather App
//
//  Created by Gustavo Barreto on 14/08/24.
//

import SwiftUI

struct CustomTabBar: View {
    var body: some View {
        ZStack {
            HStack {
                Button(action: {
                    print("Clicou aqui 1")
                }) {
                    Image(systemName: "mappin.and.ellipse")
                }
                
                Spacer()
                
                NavigationLink {
                    //
                } label: {
                    Image(systemName: "list.star")
                }
            }
            .font(.title2)
            .padding(EdgeInsets(top: 20, leading: 32, bottom: 26, trailing: 32))
            .background(.ultraThinMaterial)
            .foregroundStyle(.white)
        }
        .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .bottom)
        .ignoresSafeArea()
    }
}

#Preview {
    CustomTabBar()
}