//
//  GACCreateCollectionBottomSheet.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-04-06
//
        
import Foundation
import SwiftUI

struct GACCreateCollectionBottomSheet: View {
    @Binding var showCreateBottomSheet: Bool
    
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
                    .allowsHitTesting(true)
                    .onTapGesture {
                        showCreateBottomSheet.toggle()
                    }
            }
            .padding(.horizontal, Dimensions.Padding.padding15)
            .background(Color(LightTheme.gray400))
            .clipShape(RoundedCorners(radius: Dimensions.CornerRadius.cornerRadius8, corners: [.topLeft, .topRight]))
            
            VStack(alignment: .leading) {
                HStack {
                    Image(for: .link)
                        .resizable()
                        .frame(width: Dimensions.FrameSize.size15,
                               height: Dimensions.FrameSize.size15)
                        .padding(.trailing, Dimensions.FrameSize.size20)
                    
                    Text("Link")
                        .applyTextStyle(.white, .callout)
                    
                    Spacer()
                }
                .padding(.leading, Dimensions.Padding.padding15)
                
                HStack {
                    Image(for: .allSavedItems)
                        .resizable()
                        .frame(width: Dimensions.FrameSize.size15,
                               height: Dimensions.FrameSize.size15)
                        .padding(.trailing, Dimensions.FrameSize.size20)
                    
                    Text("All saved items")
                        .applyTextStyle(.white, .callout)
                }
                .padding(.leading, Dimensions.Padding.padding15)
                
                HStack {
                    Image(for: .blank)
                        .resizable()
                        .frame(width: Dimensions.FrameSize.size15,
                               height: Dimensions.FrameSize.size15)
                        .padding(.trailing, Dimensions.FrameSize.size20)
                    
                    Text("Blank")
                        .applyTextStyle(.white, .callout)
                }
                .padding(.leading, Dimensions.Padding.padding15)
                Spacer()
            }
            .background(LightTheme.tabBarBGColor)
        }
        .background(.clear)
    }
}
