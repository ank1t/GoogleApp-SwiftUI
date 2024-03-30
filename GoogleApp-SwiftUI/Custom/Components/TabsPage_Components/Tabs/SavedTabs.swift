//
//  SavedTabs.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-21
//
        
import Foundation
import SwiftUI

struct SavedTabs: View {
    var body: some View {
        ZStack {
            LightTheme.tabBarBGColor
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading, spacing: Dimensions.Spacing.spacing10) {
                    LightTheme.tabBarBGColor
                        .frame(height: Dimensions.FrameSize.size60)
                    Text("Recently saved")
                    
                    Spacer()
                }
            }
        }
    }
}
