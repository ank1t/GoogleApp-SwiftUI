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
            let cols = [
                GridItem(.flexible()),
                GridItem(.flexible())
            ]
            
            ScrollView {
                VStack(alignment: .leading, spacing: Dimensions.Spacing.spacing10) {
                    Text("\(articles.count) saved")
                        .applyTextStyle(.white, .title3)
                        .padding(.leading, Dimensions.Padding.padding15)
                    LazyVGrid(columns: cols, spacing: 20) {
                        ForEach(articles) { config in
                            GACSavedArticles(config: config)
                        }
                    }
                    VStack { }
                }
                .padding(.horizontal, Dimensions.Padding.padding15)
            }
        }
    }
}
