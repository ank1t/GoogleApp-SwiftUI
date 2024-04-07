//
//  GACCreateCollectionBottomSheet.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-04-06
//
        
import Foundation
import SwiftUI

struct GACCreateCollectionBottomSheet: View {
    var body: some View {
        VStack(spacing: Dimensions.Spacing.spacing15) {
            HStack {
                Text("Create collection from")
                    .applyTextStyle(.white, .title)
                
                Spacer()
                
                Image(for: .close)
                    .resizable()
                    .frame(width: Dimensions.FrameSize.size15,
                           height: Dimensions.FrameSize.size15)
            }
        }
        .padding(.horizontal, Dimensions.Padding.padding15)
    }
}
