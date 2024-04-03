//
//  SavedTabs.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-21
//
        
import Foundation
import SwiftUI

struct SavedTabs: View {
    @State private var savedArticles: [GACIconTitleSubtitleConfig]?
    @StateObject var envSettings = EnvironmentSettings()
    @State private var showProgressView: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                LightTheme.tabBarBGColor
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(alignment: .leading, spacing: Dimensions.Spacing.spacing10) {
                        LightTheme.tabBarBGColor
                            .frame(height: Dimensions.FrameSize.size60)
                        Text("Recently saved")
                            .padding(.bottom, Dimensions.Padding.padding8)
                        
                        ZStack {
                            Color(LightTheme.gray400)
                                .clipShape(RoundedRectangle(cornerRadius: Dimensions.CornerRadius.cornerRadius8))
                            
                            VStack(spacing: Dimensions.Spacing.spacing0) {
                                if let items = savedArticles {
                                    ForEach(Array(zip(items.indices, items)), id: \.0) { index, article in
                                        GACSavedResult(config: article)
                                            .padding(.horizontal, Dimensions.Padding.padding15)
                                            .padding(.vertical, Dimensions.Padding.padding15)
                                            .onTapGesture {
                                                envSettings.preSelectedURL = article.subtitle
                                                envSettings.shouldShowWindow.toggle()
                                            }
                                            .fullScreenCover(isPresented: $envSettings.shouldShowWindow) {
                                                GACArticleDetailView()
                                                    .environmentObject(envSettings)
                                            }
                                        if index != items.count - 1 {
                                            Divider()
                                                .background(LightTheme.tabBarBGColor)
                                        }
                                    }
                                }
                            }
                        }
                        .padding(.bottom, Dimensions.Padding.padding5)
                        
                        HStack(spacing: Dimensions.Spacing.spacing0) {
                            Spacer()
                            Button(action: {}) {
                                Text("View all saved items →")
                                    .foregroundColor(.white)
                            }
                            Spacer()
                        }
                        .padding(.vertical, Dimensions.Padding.padding15)
                        .background(Color(LightTheme.gray400))
                        .clipShape(Capsule())
                        
                        Text("Recent collections")
                            .padding(.top, Dimensions.Padding.padding20)
                            .padding(.bottom, Dimensions.Padding.padding8)
                        
                        HStack(spacing: Dimensions.Spacing.spacing0) {
                            Spacer()
                            Button(action: {}) {
                                Text("View all collections →")
                                    .foregroundColor(.white)
                            }
                            Spacer()
                        }
                        .padding(.vertical, Dimensions.Padding.padding15)
                        .background(Color(LightTheme.gray400))
                        .clipShape(Capsule())
                        
                        LightTheme.tabBarBGColor
                            .frame(height: Dimensions.FrameSize.size70)
                    }
                    .padding(.horizontal, Dimensions.Padding.padding15)
                }
                .opacity(showProgressView ? 0 : 1)
                
                ProgressView()
                    .frame(width: geometry.frame(in: .global).width,
                           height: geometry.frame(in: .global).height)
                    .background(.black)
                    .opacity(showProgressView ? 0.2 : 0.0)
            }
        }
        .task {
            showProgressView.toggle()
            do {
                savedArticles = await DataManager.shared.getRecentlySavedArticles()
                showProgressView.toggle()
            }
        }
        .onDisappear {
            savedArticles = nil
        }
    }
}
