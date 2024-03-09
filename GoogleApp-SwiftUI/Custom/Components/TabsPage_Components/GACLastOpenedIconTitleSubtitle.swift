//
//  GACLastOpenedIconTitleSubtitle.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-09
//
        
import Foundation
import SwiftUI

struct GACLastOpenedIconTitleSubtitle: View {
    @Binding var config: GACLastOpenedURLConfig?
    
    var body: some View {
        HStack(spacing: Dimensions.Spacing.spacing10) {
            AsyncImage(url: URL(string: config?.iconURL))
            VStack(spacing: Dimensions.Spacing.spacing5) {
                Text(config?.title)
                    .applyTextStyle(.white, .title3)
                Text(config?.title)
                    .applyTextStyle(.gray, .caption)
            }
        }
        .padding(.horizontal, Dimensions.Padding.padding15)
        .padding(.top, Dimensions.Padding.padding5)
        .border(RoundedRectangle(cornerSize: Dimensions.CornerRadius.cornerRadius8),
                width: 1)
    }
}

