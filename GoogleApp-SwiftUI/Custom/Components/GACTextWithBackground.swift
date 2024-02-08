//
//  GACTextWithBackground.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-02-07
//
        
import Foundation
import SwiftUI

struct GACTextWithBackground<Content: Shape>: View {
    let text: String
    let fontSize: CGFloat
    let textColor: Color
    let horizontalPadding: CGFloat
    let verticalPadding: CGFloat
    let backgroundColor: Color
    let Shape: Content
    
    var body: some View {
        Text(text)
            .font(.system(size: fontSize))
            .foregroundColor(textColor)
            .padding(.horizontal, horizontalPadding)
            .padding(.vertical, verticalPadding)
            .background(backgroundColor)
            .clipShape(Shape)
    }
}
