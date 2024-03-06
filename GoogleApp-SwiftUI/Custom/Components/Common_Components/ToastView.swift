//
//  ToastView.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-04
//
        
import Foundation
import SwiftUI

struct ToastView: View {
    let config: GACToastConfig
    
    var body: some View {
        HStack(spacing: Dimensions.Spacing.spacing15) {
            if config.style == .info,
               let favIcon = config.lastVisitedPageFavIcon {
                AsyncImage(url: URL(string: favIcon))
                    .frame(width: Dimensions.FrameSize.size20,
                           height: Dimensions.FrameSize.size20)
            }
            Text(config.message)
                .applyTextStyle(GACTextConfig(text: <#T##String#>, textColor: <#T##Color#>, textFont: <#T##Font#>))
        }
    }
}
