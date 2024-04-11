//
//  TrendingSearchesView.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-26.
//

import SwiftUI

struct GACTrendingSearchesView: View {
    @Namespace private var animation
    private let trendingSearches = [
        "valentine dinner ikea",
        "disability benefits",
        "nfl ravens chiefs",
        "unrwa israel gaza",
        "edmonton downtown farmers market",
        "yellowstone new episodes",
        "american airlines flight 271",
        "nfl super bowl",
        "daily horoscope today",
        "weather forecast snow storm"
    ]
    @Binding var textfieldIsActive: Bool
    
    var body: some View {
        ZStack {
            LightTheme.tabBarBGColor.ignoresSafeArea()
            VStack(alignment: .leading) {
                GACSearchTextField(appearence: .trendingPage, textfieldIsActive: $textfieldIsActive)
                    .padding(.top, Dimensions.Padding.padding10)
                
                Text("What's Trending")
                    .padding(.bottom, Dimensions.Padding.padding20)
                    .padding(.horizontal, Dimensions.Padding.padding15)
                    .foregroundColor(.gray)
                    .font(.system(size: Dimensions.FontSize.font16))
                ScrollView {
                    VStack(alignment: .leading) {
                        ForEach(trendingSearches, id: \.self) { search in
                            GACRecommendedSearchesRow(text: search)
                        }
                    }
                }
                .scrollDisabled(textfieldIsActive ? false : true)
                Spacer()
            }
        }
    }
}
