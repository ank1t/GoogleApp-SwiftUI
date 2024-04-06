//
//  GACRecentsDetails.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-04-04
//
        
import Foundation
import SwiftUI

struct GACRecentsDetails: View {
    let animatedTabsVM = AnimatedTabsVM(tabs: ["Saved", "Liked", "Followed"],
                                        views: [AnyView(GACRecentsSavedDetails()),
                                                AnyView(GACRecentsLikedDetails()),
                                                AnyView(GACRecentsFollowedDetails())],
                                        tabItemsBackgroundColor: LightTheme.tabBarBGColor)
    
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
            .padding(.top, Dimensions.Padding.padding15)
            .padding(.bottom, Dimensions.Padding.padding10)
            .padding(.vertical, Dimensions.Padding.padding24)
            
            AnimatedTabs(viewModel: animatedTabsVM)
                         
            Spacer()
        }
    }
}
