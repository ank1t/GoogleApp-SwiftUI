//
//  AnimatedTabs.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-10
//
        
import Foundation
import SwiftUI

struct AnimatedTabs: View {
    let tabs: [String]
    @State private var selectedIndex: Int = 0
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                Color.black
                HStack(spacing: 0) {
                    ForEach(Array(tabs.enumerated()), id: \.element) { index, text in
                        Text(text)
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .background(index == selectedIndex ? .green : .clear)
                    }
                    .frame(width: proxy.frame(in: .global).width/CGFloat(tabs.count))
                }
            }
            .frame(height: Dimensions.FrameSize.size25)
        }
        
        Spacer()
    }
}
