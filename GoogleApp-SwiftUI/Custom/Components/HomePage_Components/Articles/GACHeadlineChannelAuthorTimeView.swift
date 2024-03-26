//
//  GACHeadlineChannelAuthorTimeView.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-19.
//

import Foundation
import SwiftUI

struct GACHeadlineChannelAuthorTimeView: View {
    var logo: Utility.ImageName?
    
    var body: some View {
        HStack(spacing: Dimensions.Spacing.spacing5) {
            Image(for: logo ?? Utility.getNewsOutletImage())
                .renderAsResizable(.fit, false)
                .frame(width: Dimensions.FrameSize.size35,
                       height: Dimensions.FrameSize.size35)
            
            VStack(alignment: .leading) {
                Text("Content category")
                    .font(.system(size: Dimensions.FontSize.font12))
                Text("CBC \(Constants.bulletPoint) \(Int.random(in: 1..<5))h")
                    .font(.system(size: Dimensions.FontSize.font12))
            }
        }
    }
}
