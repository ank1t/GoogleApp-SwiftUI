//
//  GACRecentsLikedDetails.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-04-05
//
        
import Foundation
import SwiftUI

struct GACRecentsLikedDetails: View {
    var body: some View {
        ZStack(alignment: .top) {
            LightTheme.tabBarBGColor
            
            VStack(spacing: Dimensions.Spacing.spacing10) {
                
                Image(for: .like)
                    .resizable()
                    .frame(width: Dimensions.FrameSize.size20,
                           height: Dimensions.FrameSize.size20)
                    .padding(Dimensions.Padding.padding12)
                    .background(.pink)
                    .clipShape(RoundedRectangle(cornerRadius: Dimensions.CornerRadius.cornerRadius8))
                
                Text("Find what you like")
                    .applyTextStyle(.white, .title3)
                
                Text("When you like web articles, videos and more you'll find them here")
                    .applyTextStyle(.white, .subheadline)
                    .multilineTextAlignment(.center)
            }
            .padding(.horizontal, Dimensions.Padding.padding15)
            .padding(.top, Dimensions.Padding.padding75)
            
            Spacer()
        }
    }
}
