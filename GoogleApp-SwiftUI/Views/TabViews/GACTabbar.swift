//
//  GACTabbar.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-26
//

import Foundation
import SwiftUI

struct GACTabbar: View {
    var body: some View {
        ZStack {
            LightTheme.tabBarBGColor
            VStack(spacing: Dimensions.Spacing.spacing0) {
                Divider()
                Spacer()
                HStack(spacing: Dimensions.Spacing.spacing20) {
                    GACTabbarItem(imageName: .home, title: "Home")
                    
                    Spacer()
                    Image(for: .home)
                        .resizable()
                        .frame(width: Dimensions.FrameSize.size15,
                            height: Dimensions.FrameSize.size15)
                    Spacer()
                    GACTabbarItem(imageName: .bear, title: "Notifications")
                }
                Spacer()
            }
        }
    }
}
