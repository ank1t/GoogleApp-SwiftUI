//
//  GACCreateCollectionBottomSheet.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-04-06
//
        
import Foundation
import SwiftUI

struct GACCreateCollectionBottomSheet: View {
    var body: some View {
        VStack(spacing: Dimensions.Spacing.spacing15) {
            HStack {
                Text("Create collection from")
                    .applyTextStyle(.white, .title3)
                    .padding(.top, Dimensions.Padding.padding15)
                
                Spacer()
                
                Image(for: .close)
                    .resizable()
                    .frame(width: Dimensions.FrameSize.size15,
                           height: Dimensions.FrameSize.size15)
                    .padding(.top, Dimensions.Padding.padding15)
            }
            .padding(.horizontal, Dimensions.Padding.padding15)
            .padding(.bottom, Dimensions.Padding.padding10)
            .background(Color(LightTheme.gray400))
            
            VStack {
                HStack {
                    Image(for: .link)
                        .resizable()
                        .frame(width: Dimensions.FrameSize.size15,
                               height: Dimensions.FrameSize.size15)
                        .padding(.trailing, Dimensions.FrameSize.size20)
                    
                    Text("Link")
                        .applyTextStyle(.white, .callout)
                }
                
                HStack {
                    Image(for: .allSavedItems)
                        .resizable()
                        .frame(width: Dimensions.FrameSize.size15,
                               height: Dimensions.FrameSize.size15)
                        .padding(.trailing, Dimensions.FrameSize.size20)
                    
                    Text("All saved items")
                        .applyTextStyle(.white, .callout)
                }
                
                HStack {
                    Image(for: .blank)
                        .resizable()
                        .frame(width: Dimensions.FrameSize.size15,
                               height: Dimensions.FrameSize.size15)
                        .padding(.trailing, Dimensions.FrameSize.size20)
                    
                    Text("Blank")
                        .applyTextStyle(.white, .callout)
                }
            }
        }
        
    }
}
