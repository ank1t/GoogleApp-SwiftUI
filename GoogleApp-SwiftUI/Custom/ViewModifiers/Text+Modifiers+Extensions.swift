//
//  Text+Modifiers+Extensions.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-02-08
//
        
import Foundation
import SwiftUI

struct TextStyle: ViewModifier {
    let textColor: Color
    let textFont: Font
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(textColor)
            .font(textFont)
    }
}

extension Text {
    func applyTextStyle(_ config: GACTextConfig) -> some View {
        modifier(TextStyle(textColor: config.textColor,
                           textFont: config.textFont))
    }
    
    func applyTextStyle(_ textColor: Color,
                        _ textFont: Font) -> some View {
        modifier(TextStyle(textColor: textColor,
                           textFont: textFont))
    }
}
