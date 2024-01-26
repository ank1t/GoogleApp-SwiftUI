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
    let renderImageAsTemplate: Bool
    let title: String
    let subtitle: String?
    let divider: GACProfileDividerView
    let dividerInset: CGFloat
    let iconSize: CGFloat
    let disclosureIndicator: Image?
    
    init(imageName: Utility.ImageName,
         renderImageAsTemplate: Bool = true,
         title: String,
         subtitle: String? = nil,
         divider: GACProfileDividerView = .none,
         dividerInset: CGFloat = 0,
         iconSize: CGFloat = Dimensions.FrameSize.size18,
         disclosureIndicator: Image? = nil) {
        self.imageName = imageName
        self.renderImageAsTemplate = renderImageAsTemplate
        self.title = title
        self.subtitle = subtitle
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
