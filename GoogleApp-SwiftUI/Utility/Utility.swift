//
//  Utility.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-19.
//

import Foundation
import UIKit
import WebKit

struct Utility {
    static var shared = Utility()
    private init() { }
    
    enum ImageName: String {
        case home = "house.fill"
        case notifications = "bell.circle"
        case bell = "bell"
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
        case searchRecent = "doc.text.magnifyingglass"
        case searchMenu = "magnifyingglass"
        case searchPrevious = "clock.arrow.circlepath"
        case tree
        case addUser = "add-user"
        case userSettings = "user-settings"
        case incognito
        case history = "clock"
        case saveHistory = "globe.badge.chevron.backward"
        case speaker = "speaker.wave.2"
        case settings = "gear"
        case help = "questionmark.circle"
        case close = "xmark"
        case google_logo
        case upArrow = "arrow.up"
        case like = "heart"
        case follow = "lasso.and.sparkles"
        case share = "square.and.arrow.up"
        case more = "ellipsis"
        case doc
        case sunrise
        case chevronUp = "chevron.up.circle"
        case userProfile = "user-profile"
        case trending = "chart.line.uptrend.xyaxis"
        case backChevron = "chevron.left"
        case secureLock = "lock.fill"
        case bookmark = "bookmark"
        case backArrow = "arrow.backward"
        case forwardArrow = "arrow.forward"
        case info = "info.circle"
        case play
        case copy = "doc.on.doc"
        case read = "speaker.wave.2.circle"
        case reload = "goforward"
        case noNetwork = "exclamationmark.icloud"
        case plus = "plus"
        case cbc = "cbc"
        case gm = "gm"
        case np = "np"
        case cnn = "cnn"
        case gn = "gn"
        case natgeo = "nat-geo"
        case plane = "plane"
        case earth = "earth"
        case toronto = "toronto"
        
        case lake
        case snow
        case forest
        case ocean
        case mountain
        case orion
        
        case wallpaper1
        case wallpaper2
        case wallpaper3
        case wallpaper4
        
        case bear = "bear"
        case cheetah = "cheetah"
        case lion = "lion"
        case eagle = "eagle"
        case tiger = "tiger"
        case polarBear1 = "polar-bear1"
        case polarBear2 = "polar-bear2"
        
        var icon: String {
            return self.rawValue
        }
    }
    
    static var isLargeDevice: Bool {
        return UIScreen.main.bounds.height > 800
    }
    
    static var screenWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    static func shareActivityItems(_ items: [Any]) {
        DispatchQueue.main.async {
            let activityItems = UIActivityViewController(activityItems: items,
                                                         applicationActivities: nil)
            UIApplication.shared
                .currentUIWindow()?.rootViewController?
                .present(activityItems,
                         animated: true,
                         completion: nil)
        }
    }
    
    static func generateYTURL(from id: String) -> String {
        Constants.youtubeBaseURL + id
    }
    
    static func getNewsOutletImage() -> Self.ImageName {
        return [Utility.ImageName.np,
                Utility.ImageName.gm,
                Utility.ImageName.gn,
                Utility.ImageName.cnn,
                Utility.ImageName.natgeo].randomElement()!
    }
    
    lazy var webview: WKWebView = {
       return WKWebView()
    }()
    
    static var numberOfOpenTabs: Int {
        return 2
    }
}


struct Dimensions {
    struct FrameSize {
        static let size2: CGFloat = 2
        static let size5: CGFloat = 5
        static let size10: CGFloat = 10
        static let size12: CGFloat = 12
        static let size15: CGFloat = 15
        static let size16: CGFloat = 16
        static let size18: CGFloat = 18
        static let size20: CGFloat = 20
        static let size25: CGFloat = 25
        static let size30: CGFloat = 30
        static let size35: CGFloat = 35
        static let size40: CGFloat = 40
        static let size50: CGFloat = 50
        static let size60: CGFloat = 60
        static let size70: CGFloat = 70
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
        static let padding2: CGFloat = 2
        static let padding4: CGFloat = 4
        static let padding5: CGFloat = 5
        static let padding8: CGFloat = 8
        static let padding10: CGFloat = 10
        static let padding12: CGFloat = 12
        static let padding15: CGFloat = 15
        static let padding20: CGFloat = 20
        static let padding24: CGFloat = 24
        static let padding32: CGFloat = 32
        static let padding45: CGFloat = 45
        static let padding50: CGFloat = 50
        static let padding75: CGFloat = 75
    }
    
    struct Spacing {
        static let spacing0: CGFloat = 0
        static let spacing2: CGFloat = 2
        static let spacing4: CGFloat = 4
        static let spacing5: CGFloat = 5
        static let spacing10: CGFloat = 10
        static let spacing15: CGFloat = 15
        static let spacing20: CGFloat = 20
        static let spacing25: CGFloat = 25
        static let spacing40: CGFloat = 40
        static let spacing100: CGFloat = 100
        static let spacing250: CGFloat = 250
    }
    
    struct CornerRadius {
        static let cornerRadius5: CGFloat = 5
        static let cornerRadius8: CGFloat = 8
        static let cornerRadius10: CGFloat = 10
        static let cornerRadius15: CGFloat = 15
    }
    
    struct Offset {
        static let offset5: CGFloat = 5
        static let offset10: CGFloat = 10
    }
}
