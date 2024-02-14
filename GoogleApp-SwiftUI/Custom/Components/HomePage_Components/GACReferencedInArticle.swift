//
//  GACReferencedInArticle.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-19.
//

import Foundation
import SwiftUI

struct GACReferencedInArticle: View {
    var body: some View {
        VStack(alignment: .leading, spacing: Dimensions.Spacing.spacing4) {
            Text("Mentioned")
                .font(.system(size: Dimensions.FontSize.font12, weight: .medium))
            HStack(spacing: Dimensions.Spacing.spacing15) {
                Image(for: .tree)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: Dimensions.FrameSize.size30, height: Dimensions.FrameSize.size30)
                
                VStack(alignment: .leading) {
                    Text("Skukuza Golf Club")
                        .font(.system(size: Dimensions.FontSize.font12, weight: .medium))
                        .foregroundColor(.white)
                    Text("Golf club in South Africa")
                        .font(.system(size: Dimensions.FontSize.font11))
                        .foregroundColor(LightTheme.searchBarPlaceholderColor)
                }
                .padding(Dimensions.Padding.padding10)
                Spacer()
            }
            .background(Color(LightTheme.gray400))
            .cornerRadius(Dimensions.CornerRadius.cornerRadius8)
            .padding(.top, Dimensions.Padding.padding5)
        }
        .padding(.horizontal, Dimensions.Padding.padding20)
        .padding(.top, Dimensions.Padding.padding10)
    }
}
