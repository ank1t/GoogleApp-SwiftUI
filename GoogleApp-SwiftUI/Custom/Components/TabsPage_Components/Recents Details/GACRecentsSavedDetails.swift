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
    @State private var showProgressView: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
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
                        
                    }
                           .padding(.horizontal, Dimensions.Padding.padding15)
                }
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
                savedArticles = await DataManager.shared.getRecentCollections()
                showProgressView.toggle()
            }
        }
    }
}
