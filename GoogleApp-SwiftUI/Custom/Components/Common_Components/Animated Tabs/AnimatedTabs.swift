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
        ZStack(alignment: .top) {
            TabView(selection: $selectedIndex) {
                OpenTabs().tag(0)
                SavedTabs().tag(1)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .ignoresSafeArea()
            
            AnimatedTabBarView(selectedIndex: $selectedIndex)
        }
    }
}
