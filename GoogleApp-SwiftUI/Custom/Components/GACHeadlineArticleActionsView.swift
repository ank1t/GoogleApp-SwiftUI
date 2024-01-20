//
//  GACHeadlineArticleActionsView.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Admin on 2024-01-19.
//

import Foundation
import SwiftUI

struct GACHeadlineArticleActionsView: View {
    var body: some View {
        HStack(spacing: Utility.isLargeDevice ? Dimensions.Spacing.spacing25 : Dimensions.Spacing.spacing15) {
            ForEach(["heart", "square.and.arrow.up", "ellipsis"], id: \.self) { imageName in
                Image(systemName: imageName)
                    .font(.system(size: Dimensions.FontSize.font15))
            }
        }
    }
}
