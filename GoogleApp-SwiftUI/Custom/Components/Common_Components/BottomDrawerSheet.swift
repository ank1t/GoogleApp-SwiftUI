//
//  BottomDrawerSheet.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-03
//
        
import Foundation
import SwiftUI

struct BottomDrawerSheet: View {
    let config: BottomSheetDrawerConfig
    
    var body: some View {
        VStack(spacing: Dimensions.Spacing.spacing0) {
            Color.clear
            ZStack {
                LightTheme.tabBarBGColor
                    .cornerRadius(15, corners: [.topLeft, .topRight])
                VStack(spacing: Dimensions.Spacing.spacing0) {
                    Image(for: config.image)
                        .renderAsResizable(.fit)
                        .foregroundColor(.white)
                        .frame(width: Dimensions.FrameSize.size40,
                               height: Dimensions.FrameSize.size40)
                    
                    Text(config.title)
                        .font(.system(.title3))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(Dimensions.Padding.padding20)
                    
                    Text(config.subtitle)
                        .font(.system(.subheadline))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, Dimensions.Padding.padding20)
                    
                    ButtonPair(colorPairs: config.colorPairs)
                        .padding([.top, .leading, .trailing], Dimensions.Padding.padding15)
                }
            }
        }
    }
}
