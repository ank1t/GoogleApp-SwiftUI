//
//  GACImageActionButton.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-02-27
//
        

import Foundation
import SwiftUI

struct GACImageActionConfig: Identifiable {
    let id = UUID().uuidString
    let image: Utility.ImageName
    let action: (() -> Void)
}
