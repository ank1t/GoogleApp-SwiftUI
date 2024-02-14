//
//  GACHeadlineChannelAuthorTimeView.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-19.
//

import Foundation
import SwiftUI

struct GACHeadlineChannelAuthorTimeView: View {
    var body: some View {
        HStack(spacing: Dimensions.Spacing.spacing10) {
            Image(for: .doc)
                .font(.system(size: Dimensions.FontSize.font14))
            VStack(alignment: .leading) {
                Text("Content category")
                    .font(.system(size: Dimensions.FontSize.font12))
                Text("CBC \(Constants.bulletPoint) \(Int.random(in: 1..<5))h")
                    .font(.system(size: Dimensions.FontSize.font12))
            }
        }
    }
}
