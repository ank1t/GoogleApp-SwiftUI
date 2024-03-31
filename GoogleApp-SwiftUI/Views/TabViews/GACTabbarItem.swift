//
//  GACTabbarItem.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-26
//

import Foundation
import SwiftUI

struct GACTabbarItem: View {
    var imageName: Utility.ImageName?
    /*
     Used in lieu of imageName
     */
    var text: String?
    let title: String
    @Binding var indexOfSelectedTab: Int
    let indexOfTab: Int
    
    var body: some View {
        VStack(spacing: Dimensions.Spacing.spacing0) {
            if let imageName {
                Image(for: imageName)
                    .resizable()
                    .frame(width: Dimensions.FrameSize.size15,
                           height: Dimensions.FrameSize.size15)
                    .padding(.bottom, Dimensions.Padding.padding5)
            } else if let text {
                Text(text)
                    .applyTextStyle(.white, .body)
            }
            Text(title)
                .applyTextStyle(.white, .caption)
        }
        .onTapGesture {
            indexOfSelectedTab = indexOfTab
        }
    }
}
