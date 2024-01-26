//
//  Utility.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-19.
//

import Foundation
import UIKit

struct Utility {
    enum ImageName: String {
        case home
        case notifications = "bell.circle"
        case tabs
        case user = "person.circle"
        case google
        case mic
        case camera
        case translate
        case tag
        case note = "music.note"
        case degree
        case searchImage = "search-image"
        case tree
        case addUser = "add-user"
        case userSettings = "user-settings"
        case incognito
        case history = "clock"
        case speaker = "speaker.wave.2"
        case settings = "gear"
        case help = "questionmark.circle"
        case close = "xmark"
        case google_logo
        case upArrow = "arrow.up"
        case like = "heart"
        case share = "square.and.arrow.up"
        case more = "ellipsis"
        case doc
        case sunrise
        case chevronUp = "chevron.up.circle"
        
        var icon: String {
            return self.rawValue
        }
    }
    
    static var isLargeDevice: Bool {
        return UIScreen.main.bounds.height > 800
    }
}


struct Dimensions {
    struct FrameSize {
        static let size5: CGFloat = 5
        static let size10: CGFloat = 10
        static let size15: CGFloat = 15
        static let size16: CGFloat = 16
        static let size18: CGFloat = 18
        static let size20: CGFloat = 20
        static let size25: CGFloat = 25
        static let size30: CGFloat = 30
        static let size40: CGFloat = 40
        static let size50: CGFloat = 50
        static let size75: CGFloat = 75
        static let size100: CGFloat = 100
        static let size200: CGFloat = 200
    }
    
    struct FontSize {
        static let font10: CGFloat = 10
        static let font11: CGFloat = 11
        static let font12: CGFloat = 12
        static let font14: CGFloat = 14
        static let font15: CGFloat = 15
        static let font16: CGFloat = 16
        static let font18: CGFloat = 18
        static let font24: CGFloat = 24
    }
    
    struct Padding {
        static let padding5: CGFloat = 5
        static let padding8: CGFloat = 8
        static let padding10: CGFloat = 10
        static let padding12: CGFloat = 12
        static let padding15: CGFloat = 15
        static let padding20: CGFloat = 20
        static let padding24: CGFloat = 24
        static let padding50: CGFloat = 50
    }
    
    struct Spacing {
        static let spacing0: CGFloat = 0
        static let spacing2: CGFloat = 2
        static let spacing4: CGFloat = 4
        static let spacing5: CGFloat = 5
        static let spacing10: CGFloat = 10
        static let spacing15: CGFloat = 15
        static let spacing25: CGFloat = 25
        static let spacing250: CGFloat = 250
    }
    
    struct CornerRadius {
        static let cornerRadius5: CGFloat = 5
        static let cornerRadius8: CGFloat = 8
        static let cornerRadius10: CGFloat = 10
        static let cornerRadius15: CGFloat = 15
    }
}
