//
//  GACTabView.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-26
//
        
import Foundation
import SwiftUI

struct GACTabView: View {
    @State private var indexOfSelectedTab = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $indexOfSelectedTab) {
                HomePage().tag(0)
                TabsPage().tag(1)
                NotificationsPage().tag(2)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .ignoresSafeArea()
            
            GACTabbar(indexOfSelectedTab: $indexOfSelectedTab)
                .ignoresSafeArea()
                .frame(height: Dimensions.FrameSize.size60)
        }
    }
}
