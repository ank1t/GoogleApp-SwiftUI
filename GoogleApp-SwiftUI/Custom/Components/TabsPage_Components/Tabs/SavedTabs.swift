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
                    
                    HStack(spacing: Dimensions.Spacing.spacing0) {
                        Spacer()
                        Button(action: {}) {
                            Text("View all saved items →")
                                .foregroundColor(.white)
                        }
                        Spacer()
                    }
                    .padding(.vertical, Dimensions.Padding.padding15)
                    .background(Color(LightTheme.gray400))
                    .clipShape(Capsule())
                    
                    Text("Recent collections")
                        .padding(.top, Dimensions.Padding.padding20)
                    
                    HStack(spacing: Dimensions.Spacing.spacing0) {
                        Spacer()
                        Button(action: {}) {
                            Text("View all collections →")
                                .foregroundColor(.white)
                        }
                        Spacer()
                    }
                    .padding(.vertical, Dimensions.Padding.padding15)
                    .background(Color(LightTheme.gray400))
                    .clipShape(Capsule())
                    
                    LightTheme.tabBarBGColor
                        .frame(height: Dimensions.FrameSize.size70)
                }
                .padding(.horizontal, Dimensions.Padding.padding15)
            }
        }
    }
}
