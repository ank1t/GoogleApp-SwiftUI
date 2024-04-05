//
//  AnimatedTabBarView.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-20
//
        
import Foundation
import SwiftUI

struct AnimatedTabBarView: View {
    let tabNames: [String]
    @Binding var selectedIndex: Int
    @Namespace var nameSpace
    
    var body: some View {
        GeometryReader { proxy in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: Dimensions.Spacing.spacing0) {
                    ForEach(Array(zip(tabNames.indices, tabNames)), id: \.0) { index, name in
                        AnimatedTabBarViewItem(selectedIndex: $selectedIndex,
                                               itemName: name, itemIndex: index,
                                               nameSpace: nameSpace.self)
                        .frame(width: proxy.frame(in: .global).width/CGFloat(tabNames.count))
                    }
                }
            }
            .scrollDisabled(true)
        }
        .background(.black)
        .frame(height: Dimensions.FrameSize.size50)
        .edgesIgnoringSafeArea(.top)
    }
}
