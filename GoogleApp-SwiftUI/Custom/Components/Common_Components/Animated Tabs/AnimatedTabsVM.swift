//
//  AnimatedTabsVM.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-13
//
        
import Foundation
import SwiftUI

struct AnimatedTabsVM {
    var tabs: [String] = ["Tabs", "Saved"]
    var views: [AnyView] = [AnyView(OpenTabs()), AnyView(SavedTabs())]
}
