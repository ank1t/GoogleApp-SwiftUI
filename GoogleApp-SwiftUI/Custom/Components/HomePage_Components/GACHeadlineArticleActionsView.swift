//
//  GACHeadlineArticleActionsView.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-19.
//

import Foundation
import SwiftUI

struct GACHeadlineArticleActionsView: View {
    var body: some View {
        HStack(spacing: Utility.isLargeDevice ? Dimensions.Spacing.spacing25 : Dimensions.Spacing.spacing15) {
            ForEach([.like, .share, .more] as [Utility.ImageName], id: \.self) { imageName in
                Image(for: imageName)
                    .font(.system(size: Dimensions.FontSize.font15))
            }
        }
    }
}
