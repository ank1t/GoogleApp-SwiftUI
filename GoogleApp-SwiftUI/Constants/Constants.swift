//
//  Constants.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-19.
//

import UIKit
import SwiftUI

struct LightTheme {
    static let tabBarBGColor = Color(uiColor: UIColor(red: 32/255.0, green: 33/255.0, blue: 37/255.0, alpha: 1))
    static let searchBarPlaceholderColor = Color(uiColor: UIColor(red: 154/255.0, green: 157/255.0, blue: 164/255.0, alpha: 1))
    static let gray400 = UIColor(red: 55/255.0, green: 55/255.0, blue: 54/255.0, alpha: 0.75).cgColor
}

struct Constants {
    static let overlayOpacity: CGFloat = 0.3
    static let profileScreenAnimationDuration: CGFloat = 0.05
    static let disclosureAnimationDuration: CGFloat = 0.1
    static let bulletPoint: String = "•"
    static let searchTextfieldPlaceholder: String = "Search"
    static let searchOrURLTextfieldPlaceholder: String = "Search or type URL"
    static let animationID: String = "SearchTextfieldAnimation"
}
