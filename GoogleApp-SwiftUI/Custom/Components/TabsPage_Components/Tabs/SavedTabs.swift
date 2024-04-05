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
    @State private var recentCollections: [GACRecentCollectionsVM]?
    @StateObject var envSettings = EnvironmentSettings()
    @State private var showProgressView: Bool = false
    @State private var viewItemDetails: Bool = false
    @State private var sheetDetent = PresentationDetent.large
    
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
                            Button(action: {
                                viewItemDetails.toggle()
                            }) {
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
                        
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())],
                                  alignment: .center) {
                            ForEach(recentCollections ?? [], id: \.id) { collection in
                                GACRecentCollections(viewModel: collection)
                            }
                        }
                        
                        HStack(spacing: Dimensions.Spacing.spacing0) {
                            Spacer()
                            Button(action: {
                                viewItemDetails.toggle()
                            }) {
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
        .sheet(isPresented: $viewItemDetails, content: {
            VStack { Text("") }
                .presentationDetents([.medium, .large], selection: $sheetDetent)
        })
        .task {
            showProgressView.toggle()
            do {
                savedArticles = await DataManager.shared.getRecentlySavedArticles()
                recentCollections = await DataManager.shared.getRecentCollections()
                showProgressView.toggle()
            }
        }
        .onDisappear {
            savedArticles = nil
            recentCollections = nil
        }
    }
}
