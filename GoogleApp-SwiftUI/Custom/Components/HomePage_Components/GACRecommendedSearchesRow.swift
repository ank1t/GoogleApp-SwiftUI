//
//  GACTrendingSearchesView.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh,Ankit on 2024-01-28.
//

import SwiftUI

struct GACRecommendedSearchesRow: View {
    var text: String = "Some text"
    var icon: Utility.ImageName = .trending
    @StateObject var newTabSetting = EnvironmentSettings()
    
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .fill(Color(LightTheme.gray400))
                    
                Image(for: icon)
                    .renderAsResizable(.fit, true)
                    .frame(width: Dimensions.FrameSize.size12)
                    .foregroundColor(.white)
                    .padding(.horizontal, Dimensions.Padding.padding10)
            }
            .frame(width: Dimensions.FrameSize.size35)
            .padding(.leading, Dimensions.Padding.padding15)
            .padding(.trailing, Dimensions.Padding.padding10)
            
            Text(text)
                .foregroundColor(.white)
                .font(.system(size: Dimensions.FontSize.font18))
        }
        .onTapGesture {
            if let urlEncoded = text.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) {
                newTabSetting.preSelectedURL = String(format: Constants.googleBaseURL, urlEncoded)
            }
            newTabSetting.shouldShowWindow.toggle()
        }
        .fullScreenCover(isPresented: $newTabSetting.shouldShowWindow) {
            GACArticleDetailView()
                .environmentObject(newTabSetting)
        }
    }
}
