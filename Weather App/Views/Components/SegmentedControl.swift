//
//  SegmentedControl.swift
//  Weather App
//
//  Created by Gustavo Barreto on 26/08/24.
//

import SwiftUI

struct SegmentedControl: View {
    
    @Binding var selectedSegment: Int
    
    var body: some View {
        VStack(spacing: 6) {
            HStack {
                Button {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        self.selectedSegment = 0
                    }
                } label: {
                    Text("Hourly Forecast")
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        self.selectedSegment = 1
                    }
                } label: {
                    Text("Weekly Forecast")
                }
                .frame(minWidth: 0, maxWidth: .infinity)
            }
            .font(.subheadline)
            .bold()
            .foregroundStyle(.secondary)
            
            //MARK: Separator
            
            Divider()
                .frame(height: 1)
                .background(.white.opacity(0.5))
                .blendMode(.overlay)
                .shadow(color: .black.opacity(0.2), radius: 0, x: 0, y: 1)
                .blendMode(.overlay)
                .overlay(
                //MARK: Separator by selected state)
                    HStack {
                        Divider()
                            .frame(width: UIScreen.main.bounds.width / 2, height: 2)
                            .background(Color.underline)
//                            .blendMode(.overlay)
                    }
                        .frame(maxWidth: .infinity, alignment: selectedSegment == 0 ? .leading : .trailing)
                        .offset(y: -1)
                )
        }
        .padding(.top, 48)
    }
}

#Preview {
    SegmentedControl(selectedSegment: .constant(0))
}
