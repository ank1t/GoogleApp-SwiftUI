//
//  GACRecentsFollowedDetails.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-04-05
//
        
import Foundation
import SwiftUI

struct GACRecentsFollowedDetails: View {
    var body: some View {
        ZStack(alignment: .top) {
            LightTheme.tabBarBGColor
            
            VStack(spacing: Dimensions.Spacing.spacing10) {
                
                Image(for: .follow)
                    .resizable()
                    .frame(width: Dimensions.FrameSize.size20,
                           height: Dimensions.FrameSize.size20)
                    .padding(Dimensions.Padding.padding12)
                    .background(.gray)
                    .clipShape(RoundedRectangle(cornerRadius: Dimensions.CornerRadius.cornerRadius8))
                
                Text("Follow what you're interested in")
                    .applyTextStyle(.white, .title3)
                
                Text("When you follow topics on Search or the Google app, they'll appear ere")
                    .applyTextStyle(.white, .subheadline)
                    .multilineTextAlignment(.center)
            }
            .padding(.horizontal, Dimensions.Padding.padding15)
            .padding(.top, Dimensions.Padding.padding75)
            
            Spacer()
        }
    }
}
