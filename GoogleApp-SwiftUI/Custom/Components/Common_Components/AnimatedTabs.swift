//
//  AnimatedTabs.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-10
//
        
import Foundation
import SwiftUI

struct AnimatedTabs: View {
    let viewModel: AnimatedTabsVM
    @State private var selectedIndex: Int = 0
    @State private var frameWidth: CGFloat = .zero
    
    var body: some View {
        GeometryReader { proxy in
            HStack(spacing: Dimensions.Spacing.spacing0) {
                ForEach(Array(viewModel.tabs.enumerated()), id: \.element) { index, text in
                    Text(text)
                        .foregroundColor(.white)
                        .frame(width: proxy.size.width/CGFloat(viewModel.tabs.count))
                        .padding(.vertical, Dimensions.Padding.padding10)
                        .background(index == selectedIndex ? .green : .black)
                }
            }
        }
        Spacer()
    }
}
