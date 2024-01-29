//
//  GACTrendingSearchesView.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh,Ankit on 2024-01-28.
//

import SwiftUI

struct GACTrendingSearchesView: View {
    var trendingSearchText: String = "Some text"
    
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .fill(Color(LightTheme.gray400))
                    
                Image(for: .trending)
                    .renderAsResizable(.fit, true)
                    .frame(width: Dimensions.FrameSize.size12)
                    .foregroundColor(.white)
                    .padding(.horizontal, Dimensions.Padding.padding10)
            }
            .frame(width: Dimensions.FrameSize.size35)
            .padding(.leading, Dimensions.Padding.padding15)
            .padding(.trailing, Dimensions.Padding.padding10)
            
            Text(trendingSearchText)
                .foregroundColor(.white)
                .font(.system(size: Dimensions.FontSize.font18))
        }
    }
}
