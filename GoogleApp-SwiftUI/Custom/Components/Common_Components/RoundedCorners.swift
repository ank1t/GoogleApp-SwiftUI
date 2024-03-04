//
//  RoundedCorners.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-03
//
        
import Foundation
import SwiftUI

struct RoundedCorners: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
