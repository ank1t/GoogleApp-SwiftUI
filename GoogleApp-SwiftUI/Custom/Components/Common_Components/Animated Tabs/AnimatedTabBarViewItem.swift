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
    
    var body: some View {
        Button {
            selectedIndex = itemIndex
        } label: {
            VStack(spacing: Dimensions.Spacing.spacing0) {
                Text(itemName)
                    .applyTextStyle(.white, .title3)
            }
        }
    }
}
