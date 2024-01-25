//
//  GACLocalWeatherView.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-19.
//

import Foundation
import SwiftUI

struct GACLocalWeatherView: View {
//    let city: String
//    let weatherForecast: String
//    let chanceOfPrecipitation: String
//    let temperature: String
//    let weatherIcon: String
    
    var body: some View {
        HStack {
            HStack {
                VStack(alignment: .leading, spacing: Dimensions.Spacing.spacing5) {
                    Text("Toronto")
                        .font(.system(size: Dimensions.FontSize.font16, weight: .semibold))
                    Text("Cloudy • 70%")
                        .font(.system(size: Dimensions.FontSize.font14, weight: .regular))
                }
                Spacer()
                HStack(spacing: Dimensions.Spacing.spacing5) {
                    Text("18°C")
                        .font(.system(size: Dimensions.FontSize.font24, weight: .regular))
                    Image(for: .sunrise)
                        .font(.system(size: Dimensions.FontSize.font18))
                }
            }
            .padding(Dimensions.Padding.padding15)
            .overlay {
                RoundedRectangle(cornerRadius: Dimensions.CornerRadius.cornerRadius15)
                    .stroke(Color(cgColor: LightTheme.gray400), lineWidth: 1)
            }
            .padding(.top, Dimensions.Padding.padding15)
            .padding(.horizontal, Dimensions.Padding.padding20)
        }
    }
}
