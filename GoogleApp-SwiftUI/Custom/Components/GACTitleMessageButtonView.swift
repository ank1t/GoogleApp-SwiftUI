//
//  GACTitleMessageButtonView.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-02-08
//
        
import Foundation
import SwiftUI

struct GACTitleMessageButtonView: View {
    let titleConfig: GACTextConfig
    let messageConfig: GACTextConfig
    let buttonConfig: GACTextConfig
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                Color
                    .black
                    .opacity(Constants.overlayOpacity)
                    .ignoresSafeArea()
                
                VStack {
                    Text(titleConfig.text)
                        .applyTextStyle(titleConfig)
                        .padding(.top, Dimensions.Padding.padding20)
                        .padding(.bottom, Dimensions.Padding.padding15)
                        .padding(.horizontal, Dimensions.Padding.padding20)
                    
                    Text(messageConfig.text)
                        .applyTextStyle(messageConfig)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, Dimensions.Padding.padding20)
                        .padding(.bottom, Dimensions.Padding.padding12)
                    
                    HStack {
                        Button(action: {}) {
                            Text(buttonConfig.text)
                                .applyTextStyle(buttonConfig)
                        }
                        .frame(width: proxy.frame(in: .global).width * 0.75)
                        .padding(.vertical, Dimensions.Padding.padding10)
                        .background(.cyan)
                        .clipShape(Capsule())
                    }
                    .padding(.bottom, Dimensions.Padding.padding20)
                    .padding(.horizontal, Dimensions.Padding.padding15)
                    
                }
                .background(LightTheme.tabBarBGColor)
                .cornerRadius(Dimensions.CornerRadius.cornerRadius10)
                .frame(width: proxy.frame(in: .global).width * 0.9)
            }
        }
    }
}
