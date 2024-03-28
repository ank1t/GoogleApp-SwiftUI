//
//  AnimatedTabBarViewItem.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-20
//
        
import Foundation
import SwiftUI

struct AnimatedTabBarViewItem: View {
    @Binding var selectedIndex: Int
    
    var itemName: String
    var itemIndex: Int
    let nameSpace: Namespace.ID
    
    var body: some View {
        Button {
            selectedIndex = itemIndex
        } label: {
            VStack(spacing: Dimensions.Spacing.spacing10) {
                Spacer()
                Text(itemName)
                    .applyTextStyle(.white, .subheadline)
                
                if selectedIndex == itemIndex {
                    Color.gray
                        .frame(height: Dimensions.FrameSize.size2)
                        .matchedGeometryEffect(id: "keyline",
                                               in: nameSpace,
                                               properties: .frame)
                } else {
                    Color.clear
                        .frame(height: Dimensions.FrameSize.size2)
                }
            }
            .animation(.spring(), value: selectedIndex)
        }
    }
}
