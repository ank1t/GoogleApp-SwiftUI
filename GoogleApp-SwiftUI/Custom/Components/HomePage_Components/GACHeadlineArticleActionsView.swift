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
    private lazy var imageActionsConfig: [GACImageActionConfig] = [
        GACImageActionConfig(image: .like, action: {}),
        GACImageActionConfig(image: .share, action: {
            guard let urlFromLink = URL(string: url) else { return }
            Utility.shareActivityItems([urlFromLink])
        }),
        GACImageActionConfig(image: .more, action: {})
    ]
    
    var body: some View {
        HStack(spacing: Utility.isLargeDevice ? Dimensions.Spacing.spacing25 : Dimensions.Spacing.spacing15) {
            ForEach(imageActionsConfig) { config in
                Image(for: config.image)
                    .font(.system(size: Dimensions.FontSize.font15))
                    .onTapGesture {
                        config.action()
                    }
            }
        }
    }
}
