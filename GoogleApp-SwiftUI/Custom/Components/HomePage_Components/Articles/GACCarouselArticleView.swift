//
//  GACCarouselArticleView.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-25
//
        
import Foundation
import SwiftUI

struct GACCarouselArticleView: View {
    let viewModel = GACCarouselArticleVM()
    
    var body: some View {
        VStack(alignment: .leading, spacing: Dimensions.Spacing.spacing0) {
            Text(viewModel.title.uppercased())
                .applyTextStyle(.white, .headline)
                .padding(Dimensions.Padding.padding15)
            ScrollView(.horizontal) {
                HStack(spacing: Dimensions.Spacing.spacing0) {
                    
                }
            }
            HStack(spacing: Dimensions.Spacing.spacing15) {
                Color.gray
                    .frame(width: Dimensions.FrameSize.size2)
                    .overlay(RoundedCorners(radius: Dimensions.CornerRadius.cornerRadius5,
                                            corners: [.topRight, .bottomRight]))
                Text(viewModel.location)
                    .applyTextStyle(.yellow, .caption)
            }
            Text(viewModel.heading)
                .applyTextStyle(.white, .title3)
                .padding(.horizontal, Dimensions.Padding.padding15)
                .padding(.top, Dimensions.Padding.padding5)
                .padding(.bottom, Dimensions.Padding.padding15)
        }
        .overlay {
            RoundedRectangle(cornerRadius: Dimensions.CornerRadius.cornerRadius15)
                .stroke(Color(cgColor: LightTheme.gray400), lineWidth: 1)
        }
        .padding(.horizontal, Dimensions.Padding.padding20)
    }
}
