//
//  GACTabbarItem.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-26
//

import Foundation
import SwiftUI

struct GACTabbarItem: View {
    let imageName: Utility.ImageName
    let title: String
    
    var body: some View {
        VStack(spacing: Dimensions.Spacing.spacing5) {
            Image(for: imageName)
                .resizable()
                .frame(width: Dimensions.FrameSize.size15,
                       height: Dimensions.FrameSize.size15)
            Text(title)
                .applyTextStyle(.gray, .caption)
        }
        .padding(.leading, Dimensions.Padding.padding20)
    }
}
