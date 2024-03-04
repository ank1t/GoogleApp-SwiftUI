//
//  BottomSheetDrawerConfig.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-03
//
        
import Foundation
import SwiftUI

struct BottomSheetDrawerConfig {
    let image: Utility.ImageName = .saveHistory
    let title: String = "Your history isn't being saved to your account"
    let subtitle: String = "Your Discover feed isn't based on your history because your Web & App Activity setting is off"
    let colorPairs: (Color, Color) = (LightTheme.tabBarBGColor, .blue)
}
