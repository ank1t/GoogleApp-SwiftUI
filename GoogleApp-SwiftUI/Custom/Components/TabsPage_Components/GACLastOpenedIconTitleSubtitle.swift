//
//  GACLastOpenedIconTitleSubtitle.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-09
//
        
import Foundation
import SwiftUI

struct GACLastOpenedIconTitleSubtitle: View {
    @Binding var config: GACLastOpenedURLConfig
    
    var body: some View {
        HStack(alignment: .top,
               spacing: Dimensions.Spacing.spacing10) {
            Image(for: config.icon)
                .renderAsResizable(.fit, false)
                .frame(width: Dimensions.FrameSize.size40,
                       height: Dimensions.FrameSize.size40)
            VStack(alignment: .leading,
                   spacing: Dimensions.Spacing.spacing5) {
                Text(config.title)
                    .applyTextStyle(.white, .subheadline)
                    .lineLimit(1)
                Text(config.subtitle)
                    .applyTextStyle(.gray, .caption)
                    .lineLimit(1)
            }
        }
        .padding(.horizontal, Dimensions.Padding.padding15)
        .padding(.vertical, Dimensions.Padding.padding10)
        .overlay(
            RoundedRectangle(cornerRadius: Dimensions.CornerRadius.cornerRadius8)
                .stroke(.gray, lineWidth: 1)
        )
        
    }
}

