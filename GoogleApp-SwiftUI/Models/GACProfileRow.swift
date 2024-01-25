//
//  GACProfileRow.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-19.
//

import Foundation
import SwiftUI

struct GACProfileRow {
    let imageName: Utility.ImageName
    let title: String
    let divider: GACProfileDividerView
    let dividerInset: CGFloat
    let iconSize: CGFloat
    let disclosureIndicator: Image?
    
    init(imageName: Utility.ImageName,
         title: String,
         divider: GACProfileDividerView = .none,
         dividerInset: CGFloat = 0,
         iconSize: CGFloat = Dimensions.FrameSize.size18,
         disclosureIndicator: Image? = nil) {
        self.imageName = imageName
        self.title = title
        self.divider = divider
        self.dividerInset = dividerInset
        self.iconSize = iconSize
        self.disclosureIndicator = disclosureIndicator
    }
}

extension GACProfileRow: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(imageName.rawValue)
        hasher.combine(title)
    }
}
