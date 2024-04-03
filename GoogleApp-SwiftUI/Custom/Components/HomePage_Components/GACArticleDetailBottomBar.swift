//
//  GACArticleDetailBottomBar.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-02-04.
//

import Foundation
import SwiftUI

struct GACArticleDetailBottomBar: View {
    @EnvironmentObject private var newTabSetting: EnvironmentSettings
    
    private let iconModels: [GACBottomBarIconModel] = [
        GACBottomBarIconModel(icon: .backArrow, actionHandler: nil),
        GACBottomBarIconModel(icon: .forwardArrow, actionHandler: nil),
        GACBottomBarIconModel(icon: .info, actionHandler: nil),
        GACBottomBarIconModel(icon: .home, actionHandler: nil)
    ]
    var body: some View {
        ZStack {
            LightTheme.tabBarBGColor
                .ignoresSafeArea(edges: .top)
            
            VStack {
                HStack(spacing: Dimensions.Spacing.spacing5) {
                    ForEach(iconModels) { iconModel in
                        Image(for: iconModel.icon)
                            .renderAsResizable(.fit)
                            .foregroundColor(.white)
                            .frame(width: Dimensions.FrameSize.size20,
                                   height: Dimensions.FrameSize.size20)
                            .padding(.leading, Dimensions.Padding.padding12)
                            .onTapGesture {
                                iconModel.actionHandler?()
                            }
                        Spacer()
                    }
                    Text("1")
                        .foregroundColor(.white)
                        .padding(.vertical, Dimensions.Padding.padding5)
                        .padding(.horizontal, Dimensions.Padding.padding8)
                        .overlay(
                            RoundedRectangle(cornerRadius: Dimensions.CornerRadius.cornerRadius5)
                                .stroke(.white, lineWidth: 1)
                        )
                        .padding(.trailing, Dimensions.Padding.padding10)
                }
            }
        }
        .frame(height: Dimensions.FrameSize.size50)
    }
}
