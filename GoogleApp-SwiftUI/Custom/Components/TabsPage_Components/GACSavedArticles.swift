//
//  GACSavedArticles.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-09
//
        
import Foundation
import SwiftUI

struct GACSavedArticles: View {
    let config: GACSavedArticlesConfig
    let width: CGFloat = (Utility.screenWidth - 50)/2
    let height: CGFloat = (Utility.screenWidth - 50)/2 * 1.2
    
    var body: some View {
        VStack(alignment: .leading,
               spacing: Dimensions.Spacing.spacing10) {
            Image(for: config.image)
                .resizable()
                .clipShape(RoundedCorners(radius: Dimensions.CornerRadius.cornerRadius15,
                                          corners: [.topLeft, .topRight]))
            VStack(alignment: .leading,
                   spacing: Dimensions.Spacing.spacing10) {
                Text(config.title)
                    .applyTextStyle(.white, .caption)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                HStack(alignment: .center,
                       spacing: Dimensions.Spacing.spacing5) {
                    Image(for: config.icon)
                        .renderAsResizable(.fit, false)
                        .frame(width: Dimensions.FrameSize.size15,
                               height: Dimensions.FrameSize.size15)
                    Text(config.url)
                        .applyTextStyle(.gray, .footnote)
                }
            }
           .padding(.horizontal, Dimensions.Padding.padding10)
           .padding(.bottom, Dimensions.Padding.padding10)
        }
        .frame(width: width,
               height: height)
        .overlay {
            RoundedRectangle(cornerRadius: Dimensions.CornerRadius.cornerRadius15)
                .stroke(Color(cgColor: LightTheme.gray400), lineWidth: 2)
        }
    }
}
