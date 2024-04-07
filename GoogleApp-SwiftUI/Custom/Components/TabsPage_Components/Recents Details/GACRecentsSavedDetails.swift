//
//  GACRecentsSavedDetails.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-04-05
//
        
import Foundation
import SwiftUI

struct GACRecentsSavedDetails: View {
    @State private var savedArticles: [GACRecentCollectionsVM]?
    @State private var savedCollections: [GACRecentCollectionsVM]?
    @State private var showProgressView: Bool = false
    @State private var showCreateBottomSheet: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottomTrailing) {
                LightTheme.tabBarBGColor
                
                ScrollView {
                    VStack(alignment: .leading,
                           spacing: Dimensions.Spacing.spacing15) {
                        Text("Saved items")
                            .applyTextStyle(.white, .title3)
                        
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())],
                                  alignment: .center) {
                            ForEach(savedArticles ?? [], id: \.id) { collection in
                                GACRecentCollections(viewModel: collection)
                            }
                        }
                        .padding(.bottom, Dimensions.Padding.padding20)
                        
                        Text("Recents collections")
                            .applyTextStyle(.white, .title3)
                        
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())],
                                  alignment: .center) {
                            ForEach(savedCollections ?? [], id: \.id) { collection in
                                GACRecentCollections(viewModel: collection)
                            }
                        }
                        
                        Spacer()
                    }
                           .padding(.horizontal, Dimensions.Padding.padding15)
                           .padding(.top, Dimensions.Padding.padding75)
                }
                
                Button(action: {
                    showCreateBottomSheet.toggle()
                }) {
                    HStack(spacing: Dimensions.Spacing.spacing15) {
                        Image(for: .plus)
                            .resizable()
                            .frame(width: Dimensions.FrameSize.size15,
                                   height: Dimensions.FrameSize.size15)
                            .foregroundColor(.white)
                        
                        Text("Create")
                            .applyTextStyle(.white, .title3)
                    }
                    .padding(.horizontal, Dimensions.Padding.padding15)
                    .padding(.vertical, Dimensions.Padding.padding15)
                    .background(LightTheme.ctaButtonblue)
                    .clipShape(RoundedRectangle(cornerRadius: Dimensions.CornerRadius.cornerRadius8))
                }
                .offset(x: -Dimensions.Spacing.spacing20,
                        y: -Dimensions.Spacing.spacing20)
                
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
                savedArticles = await DataManager.shared.getRecentCollectionsDetails()
                savedCollections = await DataManager.shared.getCollectionsDetails()
                showProgressView.toggle()
            }
        }
        .sheet(isPresented: $showCreateBottomSheet) {
            GACCreateCollectionBottomSheet()
                .presentationDetents([.height(200)])
        }
    }
}
