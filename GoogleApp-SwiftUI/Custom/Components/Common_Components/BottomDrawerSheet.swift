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
                        .frame(width: 40, height: 40)
                        .background(.white)
                }
            }
        }
    }
}
