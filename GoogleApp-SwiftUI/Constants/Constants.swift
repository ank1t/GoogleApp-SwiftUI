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
    static let ctaButtonblue = Color(uiColor: UIColor(red: 41/255.0, green: 121/255.0, blue: 255/255.0, alpha: 1))
}

struct Constants {
    static let overlayOpacity: CGFloat = 0.3
    static let noNetworkConnectionOverlayOpacity: CGFloat = 0.5
    static let shortAnimationDuration: CGFloat = 0.05
    static let defaultAnimationDuration: CGFloat = 0.1
    static let bulletPoint: String = "•"
    static let searchTextfieldPlaceholder: String = "Search"
    static let searchOrURLTextfieldPlaceholder: String = "Search or type URL"
    static let animationID: String = "SearchTextfieldAnimation"
    static let youtubeBaseURL: String = "https://www.youtube.com/"
    static let defaultURL: String = "https://google.com"
    static let googleBaseURL: String = "https://www.google.com/search?client=safari&q=%@"
}
