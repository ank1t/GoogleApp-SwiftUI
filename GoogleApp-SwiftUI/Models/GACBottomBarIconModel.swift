//
//  GACBottomBarIconModel.swift
//  GoogleApp-SwiftUI
//
//  Created by Admin on 2024-02-04.
//

import Foundation
import SwiftUI

struct GACBottomBarIconModel: Identifiable {
    var id: UUID = UUID()
    let icon: Utility.ImageName
    let actionHandler: (() -> Void)?
}
