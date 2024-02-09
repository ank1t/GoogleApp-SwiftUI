//
//  Text+Modifiers+Extensions.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-02-08
//
        
import Foundation
import SwiftUI

struct TextStyle: ViewModifier {
    let config: GACTextConfig
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(config.textColor)
            .font(config.textFont)
    }
}

extension Text {
    func applyTextStyle(_ config: GACTextConfig) {
        modifier(TextStyle(config: config))
    }
}
