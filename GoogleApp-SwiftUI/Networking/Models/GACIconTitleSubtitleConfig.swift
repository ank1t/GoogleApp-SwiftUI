//
//  GACLastOpenedURLConfig.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-09
//
        
import Foundation

struct GACIconTitleSubtitleConfig: Identifiable {
    var id: UUID = UUID()
    var icon: Utility.ImageName
    let title: String
    let subtitle: String
    var showOverlay: Bool = true
}
