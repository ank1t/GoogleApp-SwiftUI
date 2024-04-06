//
//  AnimatedTabs.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-10
//
        
import Foundation
import SwiftUI

struct AnimatedTabs: View {
    var viewModel = AnimatedTabsVM()
    @State private var selectedIndex: Int = 0
    
    var body: some View {
        ZStack(alignment: .top) {
            TabView(selection: $selectedIndex) {
                ForEach(Array(zip(viewModel.views.indices,
                                  viewModel.views)), id: \.0) { index, view in
                    view.tag(index)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .ignoresSafeArea()
            
            AnimatedTabBarView(tabNames: viewModel.tabs,
                               tabItemsBackgroundColor: viewModel.tabItemsBackgroundColor,
                               selectedIndex: $selectedIndex)
        }
    }
}
