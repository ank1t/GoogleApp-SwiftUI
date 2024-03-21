//
//  AnimatedTabs.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-10
//
        
import Foundation
import SwiftUI

struct AnimatedTabs: View {
    let viewModel = AnimatedTabsVM()
    @State private var selectedIndex: Int = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            OpenTabs().tag(0)
            SavedTabs().tag(1)
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .ignoresSafeArea()
    }
    /*@State private var frameWidth: CGFloat = .zero
    
    var body: some View {
        GeometryReader { proxy in
            HStack(spacing: Dimensions.Spacing.spacing0) {
                ForEach(Array(viewModel.tabs.enumerated()), id: \.element) { index, text in
                    VStack(spacing: Dimensions.Spacing.spacing0) {
                        Text(text)
                            .foregroundColor(.white)
                            .frame(width: proxy.size.width/CGFloat(viewModel.tabs.count))
                            .padding(.vertical, Dimensions.Padding.padding15)
                            .background(.black)
                        
                        Divider()
                            .frame(width: proxy.size.width/CGFloat(viewModel.tabs.count))
                            .background(selectedIndex == index ? .white : .clear)
                    }
                    .onTapGesture {
                        selectedIndex = index
                    }
                    .animation(.spring(), value: selectedIndex)
                }
            }
        }
        Spacer()
    }*/
}
