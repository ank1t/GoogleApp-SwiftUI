//
//  GACRecentCollectionsVM.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-04-03
//
        
import Foundation
import SwiftUI

struct GACRecentCollectionsVM: Identifiable {
    let image: Utility.ImageName
    let title: String
    let itemCount: String
    var imageSize: CGSize = CGSize(width: 150, height: 100)
    let id = UUID()
}
