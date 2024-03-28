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
            LightTheme.tabBarBGColor
                .ignoresSafeArea()
            
            Button(action: {
                
            }) {
                HStack(spacing: Dimensions.Spacing.spacing15) {
                    Image(for: .plus)
                        .resizable()
                        .frame(width: Dimensions.FrameSize.size15,
                               height: Dimensions.FrameSize.size15)
                        .foregroundColor(.white)
                    
                    Text("New Tab")
                        .applyTextStyle(.white, .callout)
                }
                .padding()
                .background(Color(cgColor: LightTheme.gray400))
                .cornerRadius(Dimensions.CornerRadius.cornerRadius15)
            }
            .offset(x: -30 ,y: -85)
        }
        
    }
}
