//
//  GACHeadlineArticleActionsView.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-19.
//

import Foundation
import SwiftUI

struct GACHeadlineArticleActionsView: View {
    let url: String
    
    var body: some View {
        HStack(spacing: Utility.isLargeDevice ? Dimensions.Spacing.spacing25 : Dimensions.Spacing.spacing15) {
            ForEach([GACBottomBarIconModel(icon: .like, actionHandler: {}),
                     GACBottomBarIconModel(icon: .share, actionHandler: {
                        guard let urlFromLink = URL(string: url) else { return }
                        Utility.shareActivityItems([urlFromLink])
                    }),
                     GACBottomBarIconModel(icon: .more, actionHandler: {})]) { config in
                Image(for: config.icon)
                    .font(.system(size: Dimensions.FontSize.font15))
                    .onTapGesture {
                        config.actionHandler?()
                    }
            }
        }
    }
}
