//
//  GACArticleDetailBottomBar.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-02-04.
//

import Foundation
import SwiftUI

struct GACArticleDetailBottomBar: View {
    var body: some View {
        ZStack {
            LightTheme.tabBarBGColor
                .ignoresSafeArea(edges: .top)
            
            VStack {
                HStack(spacing: Dimensions.Spacing.spacing5) {
                    Image(for: .backArrow)
                        .renderAsResizable(.fit)
                        .foregroundColor(.white)
                        .frame(width: Dimensions.FrameSize.size20,
                               height: Dimensions.FrameSize.size15)
                        .padding(.leading, Dimensions.Padding.padding12)
                    
                    Spacer()
                    Image(for: .forwardArrow)
                        .renderAsResizable(.fit)
                        .foregroundColor(.white)
                        .frame(width: Dimensions.FrameSize.size15,
                               height: Dimensions.FrameSize.size15)
                        .padding(.trailing, Dimensions.Padding.padding12)
                    
                    Spacer()
                    Image(for: .info)
                        .renderAsResizable(.fit)
                        .foregroundColor(.white)
                        .frame(width: Dimensions.FrameSize.size15,
                               height: Dimensions.FrameSize.size15)
                        .padding(.trailing, Dimensions.Padding.padding12)
                    
                    Spacer()
                    Image(for: .home)
                        .renderAsResizable(.fit)
                        .foregroundColor(.white)
                        .frame(width: Dimensions.FrameSize.size15,
                               height: Dimensions.FrameSize.size15)
                        .padding(.trailing, Dimensions.Padding.padding12)
                    
                    Spacer()
                    Text("1")
                        .foregroundColor(.white)
                    
                    HStack { }
                }
            }
        }
    }
}
