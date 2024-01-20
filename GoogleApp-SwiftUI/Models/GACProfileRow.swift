//
//  GACProfileRow.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Admin on 2024-01-19.
//

import Foundation

struct GACProfileRow {
    let imageName: Utility.ImageName
    let title: String
    let divider: GACProfileDividerView
    let dividerInset: CGFloat
    
    init(imageName: Utility.ImageName,
         title: String,
         divider: GACProfileDividerView = .none,
         dividerInset: CGFloat) {
        self.imageName = imageName
        self.title = title
        self.divider = divider
        self.dividerInset = dividerInset
    }
}

extension GACProfileRow: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(imageName.rawValue)
        hasher.combine(title)
    }
}
