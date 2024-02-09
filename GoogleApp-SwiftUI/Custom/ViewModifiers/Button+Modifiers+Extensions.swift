//
//  Button+Modifiers+Extensions.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-02-08
//
        
import Foundation
import SwiftUI

struct ButtonStyle: ViewModifier {
    let config: GACButtonConfig
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(config.btnColor)
            .font(config.btnFont)
    }
}

extension Button {
    func applyButtonStyle(_ config: GACButtonConfig) {
        modifier(ButtonStyle(config: config))
    }
}
