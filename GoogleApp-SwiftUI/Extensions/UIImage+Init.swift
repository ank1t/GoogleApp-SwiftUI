//
//  UIImage+Init.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-19.
//

import Foundation
import SwiftUI
import UIKit

extension Image {
    init(for name: Utility.ImageName,
         placeholder: String = "questionmark.circle") {
        guard let uiImage = UIImage(named: name.icon) else {
            self = Image(systemName: name.icon)
            return
        }
        self = Image(uiImage: uiImage)
    }
}
