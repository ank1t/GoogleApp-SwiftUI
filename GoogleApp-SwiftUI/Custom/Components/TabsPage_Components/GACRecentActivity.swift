//
//  GACRecentActivity.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-09
//
        
import Foundation
import SwiftUI

struct GACRecentActivity: View {
    @Binding var searchTerm: String
    @State private var config = NetworkingManager.shared.getLastOpenedConfig()
    
    var body: some View {
        if searchTerm.isEmpty {
            VStack(alignment: .leading,
                spacing: Dimensions.Spacing.spacing10) {
                Text("Last opened tabs")
                    .foregroundColor(.white)
                
                ForEach(0..<1) { _ in
                    GACLastOpenedIconTitleSubtitle(config: $config)
                }
                Spacer()
            }
            .padding(.horizontal, Dimensions.Padding.padding20)
        } else {
            let articles = NetworkingManager.shared.getSavedArticles()
            let cols = [GridItem(.flexible()), GridItem(.flexible())]
            
            let recommendations = NetworkingManager.shared.getSearchRecommendations()
            
            ScrollView {
                if articles.count > 0 {
                    VStack(alignment: .leading, spacing: Dimensions.Spacing.spacing10) {
                        Text("\(articles.count) saved")
                            .applyTextStyle(.white, .title3)
                            .padding(.leading, Dimensions.Padding.padding15)
                        LazyVGrid(columns: cols, spacing: 20) {
                            ForEach(articles) { config in
                                GACSavedArticles(config: config)
                            }
                        }
                        Color.clear.frame(height: Dimensions.FrameSize.size15)
                    }
                    .padding(.horizontal, Dimensions.Padding.padding15)
                }
                
                if recommendations.count > 0 {
                    LightTheme.searchBarPlaceholderColor
                        .frame(height: Dimensions.FrameSize.size5)
                    VStack(alignment: .leading, spacing: Dimensions.Spacing.spacing10) {
                        Text("Try searching Google")
                            .applyTextStyle(.white, .title3)
                            .padding(.leading, Dimensions.Padding.padding15)
                            .padding(.vertical, Dimensions.Padding.padding10)
                            
                        ForEach(recommendations, id: \.self) { text in
                            GACRecommendedSearchesRow(text: text, icon: .searchMenu)
                        }
                        Color.clear.frame(height: Dimensions.FrameSize.size15)
                    }
                    .padding(.horizontal, Dimensions.Padding.padding15)
                }
            }
        }
    }
}
