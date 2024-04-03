//
//  GACSavedResult.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-04-02
//
        
import Foundation
import SwiftUI

struct GACSavedResult: View {
    let config: GACIconTitleSubtitleConfig
    
    var body: some View {
        HStack(alignment: .top) {
            Image(for: config.icon)
                .resizable()
                .frame(width: Dimensions.FrameSize.size35,
                       height: Dimensions.FrameSize.size35)
            
            VStack(alignment: .leading,
                   spacing: Dimensions.Spacing.spacing2) {
                Text(config.title)
                    .applyTextStyle(.white, .callout)
                    .lineLimit(1)
                    .truncationMode(.tail)
                
                Text(config.subtitle)
                    .applyTextStyle(.gray, .caption)
                    .lineLimit(1)
                    .truncationMode(.tail)
            }
        }
    }
}
