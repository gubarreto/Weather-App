//
//  ForecastBottomSheetView.swift
//  Weather App
//
//  Created by Gustavo Barreto on 21/08/24.
//

import SwiftUI
import BottomSheet

struct ForecastBottomSheetView: View {
    
    @State private var segmentedControlSelection: Int = 0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                SegmentedControl(selectedSegment: $segmentedControlSelection)
            }
        }
        .frame(height: 600)
        .backgroundBlur(radius: 25, opaque: true)
        .background(Color.bottomSheetBackground)
        .clipShape(RoundedRectangle(cornerRadius: 44))
        .overlay(
            RoundedRectangle(cornerRadius: 44)
                .stroke(.white, lineWidth: 1.0)
                .blendMode(.overlay)
                .offset(y: 1)
                .blur(radius: 0)
                .mask {
                    RoundedRectangle(cornerRadius: 44)
                }
        )
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .fill(.black.opacity(0.3))
                .frame(width: 48, height: 6)
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(.top)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 44)
                .stroke(Color.bottomSheetBorderTop, lineWidth: 1)
        )
    }
}

#Preview {
    ForecastBottomSheetView()
}
