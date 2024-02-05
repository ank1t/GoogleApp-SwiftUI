//
//  GACArticleDetailTopBar.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-02-04.
//

import Foundation
import SwiftUI

struct GACArticleDetailTopBar: View {
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
                
                GACURLView()
                    .padding(.horizontal, Dimensions.Padding.padding8)
                    .padding(.bottom, Dimensions.Padding.padding5)
                
                Image(for: .more)
                    .renderAsResizable(.fit)
                    .foregroundColor(.white)
                    .frame(width: Dimensions.FrameSize.size15,
                           height: Dimensions.FrameSize.size15)
                    .padding(.trailing, Dimensions.Padding.padding12)
            }
            
        }
        .frame(height: Dimensions.FrameSize.size50)
    }
}
