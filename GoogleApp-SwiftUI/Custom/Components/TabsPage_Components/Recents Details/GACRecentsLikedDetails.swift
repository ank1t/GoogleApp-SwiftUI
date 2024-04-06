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
        ZStack {
            LightTheme.tabBarBGColor
            
            VStack(spacing: Dimensions.Spacing.spacing10) {
                
                Image(for: .like)
                    .resizable()
                    .frame(width: Dimensions.FrameSize.size20,
                           height: Dimensions.FrameSize.size20)
                    .background(.pink)
                
                Text("Find what you like")
                    .applyTextStyle(.white, .title3)
                
                Text("When you like web articles, videos and more you'll find them here")
                    .applyTextStyle(.white, .subheadline)
                    .multilineTextAlignment(.center)
            }
            .padding(.horizontal, Dimensions.Padding.padding15)
            .padding(.top, Dimensions.Padding.padding20)
            
            Spacer()
        }
    }
}
