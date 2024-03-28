//
//  OpenTabs.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-21
//
        
import Foundation
import SwiftUI

struct OpenTabs: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Color.red
                .ignoresSafeArea()
            
            Button(action: {}) {
                HStack(spacing: Dimensions.Spacing.spacing20) {
                    Image(for: .plus)
                        .resizable()
                        .frame(width: Dimensions.FrameSize.size15,
                               height: Dimensions.FrameSize.size15)
                        .foregroundColor(.gray)
                    
                    Text("New Tab")
                        .applyTextStyle(.gray, .callout)
                }
            }
            .offset(x: -50 ,y: -100)
        }
        
    }
}
