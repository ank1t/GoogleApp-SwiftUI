//
//  GACSavedArticlesConfig.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-09
//
        
import Foundation
import SwiftUI

struct GACSavedArticlesConfig: Identifiable {
    let image: Utility.ImageName
    let title: String
    let icon: Utility.ImageName
    let url: String
    let id = UUID()
}
