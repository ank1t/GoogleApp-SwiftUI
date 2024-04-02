//
//  GACArticleDetailTopBar.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-02-04.
//

import Foundation
import SwiftUI

struct GACArticleDetailTopBar: View {
    @EnvironmentObject var newTabSetting: NewTabSetting
    
    var body: some View {
        ZStack {
            LightTheme.tabBarBGColor
                .ignoresSafeArea(edges: .top)
            
            HStack(spacing: Dimensions.Spacing.spacing5) {
                Image(for: .close)
                    .renderAsResizable(.fit)
                    .foregroundColor(.white)
                    .frame(width: Dimensions.FrameSize.size15,
                           height: Dimensions.FrameSize.size15)
                    .padding(.leading, Dimensions.Padding.padding12)
                    .onTapGesture {
                        newTabSetting.shouldShowWindow.toggle()
                    }
                
                GACURLView()
                    .padding(.horizontal, Dimensions.Padding.padding8)
                    .padding(.bottom, Dimensions.Padding.padding5)
                    .environmentObject(newTabSetting)
                
                Menu {
                    Button(role: nil) { } label: {
                        Label("Copy URL", systemImage: Utility.ImageName.copy.rawValue)
                    }
                    
                    Button(role: nil) { } label: {
                        Label("Find on page", systemImage: Utility.ImageName.searchMenu.rawValue)
                    }
                    
                    Button(role: nil) { } label: {
                        Label("Read aloud", systemImage: Utility.ImageName.read.rawValue)
                    }
                    
                    Button(role: nil) { } label: {
                        Label("Refresh", systemImage: Utility.ImageName.reload.rawValue)
                    }
                } label: {
                    Image(for: .more)
                        .renderAsResizable(.fit)
                        .foregroundColor(.white)
                        .frame(width: Dimensions.FrameSize.size15,
                               height: Dimensions.FrameSize.size15)
                        .padding(.trailing, Dimensions.Padding.padding12)
                        .contentShape(Rectangle())
                        .allowsHitTesting(true)
                }
                .preferredColorScheme(.dark)
            }
            
        }
        .frame(height: Dimensions.FrameSize.size50)
    }
}
