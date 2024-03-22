//
//  AnimatedTabBarView.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-20
//
        
import Foundation
import SwiftUI

struct AnimatedTabBarView: View {
    private let tabNames: [String] = AnimatedTabsVM.tabs
    @Binding var selectedIndex: Int
    
    var body: some View {
        GeometryReader { proxy in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: Dimensions.Spacing.spacing20) {
                    ForEach(Array(zip(tabNames.indices, tabNames)), id: \.0) { index, name in
                        AnimatedTabBarViewItem(selectedIndex: $selectedIndex,
                                               itemName: name, itemIndex: index)
                        .frame(width: proxy.frame(in: .global).width/CGFloat(tabNames.count))
                    }
                }
            }
            .scrollDisabled(true)
        }
        .background(.black)
        .frame(height: Dimensions.FrameSize.size60)
        .edgesIgnoringSafeArea(.top)
    }
}
