//
//  GACTabbar.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-26
//

import Foundation
import SwiftUI

struct GACTabbar: View {
    @Binding var indexOfSelectedTab: Int
    
    var body: some View {
        ZStack {
            LightTheme.tabBarBGColor
            VStack(spacing: Dimensions.Spacing.spacing0) {
                Divider()
                Spacer()
                HStack(spacing: Dimensions.Spacing.spacing20) {
                    GACTabbarItem(imageName: .home, title: "Home",
                                  indexOfSelectedTab: $indexOfSelectedTab,
                                  indexOfTab: 0)
                        .padding(.leading, Dimensions.Padding.padding20)
                    
                    Spacer()
                    GACTabbarItem(text: "\(Utility.numberOfOpenTabs)",
                                  title: "Tabs",
                                  indexOfSelectedTab: $indexOfSelectedTab,
                                  indexOfTab: 1)
                    .padding(.leading, Dimensions.Padding.padding20)
                    
                    Spacer()
                    GACTabbarItem(imageName: .bell, title: "Notifications",
                                  indexOfSelectedTab: $indexOfSelectedTab,
                                  indexOfTab: 2)
                        .padding(.trailing, Dimensions.Padding.padding20)
                }
                Spacer()
            }
        }
    }
}
