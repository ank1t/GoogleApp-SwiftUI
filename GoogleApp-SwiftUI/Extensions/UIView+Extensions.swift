//
//  UIView+Extensions.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-03
//
        
import Foundation
import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorners(radius: radius, corners: corners))
    }
}
