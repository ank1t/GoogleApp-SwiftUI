//
//  GACRecentsDetails.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-04-04
//
        
import Foundation
import SwiftUI

struct GACRecentsDetails: View {
    
    var body: some View {
        VStack(spacing: Dimensions.Spacing.spacing10) {
            HStack(spacing: Dimensions.Spacing.spacing10) {
                Text("Interests")
                    .applyTextStyle(.white, .title2)
                Spacer()
                
                Image(for: .help)
                    .resizable()
                    .frame(width: Dimensions.FrameSize.size20,
                           height: Dimensions.FrameSize.size20)
                
                Image(for: .user)
                    .resizable()
                    .frame(width: Dimensions.FrameSize.size30,
                           height: Dimensions.FrameSize.size30)
                
            }
            .padding(.horizontal, Dimensions.Padding.padding15)
            .padding(.vertical, Dimensions.Padding.padding24)
            
            AnimatedTabs(viewModel: AnimatedTabsVM(tabs: [],
                                                   views: [])
        }
    }
}
