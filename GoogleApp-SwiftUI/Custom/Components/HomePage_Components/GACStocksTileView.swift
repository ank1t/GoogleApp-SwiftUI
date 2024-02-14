//
//  GACStocksTileView.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-19.
//

import Foundation
import SwiftUI

struct GACStocksTileView: View {
    var body: some View {
        VStack(spacing: Dimensions.Padding.padding24) {
            Text("Dow Jones")
            
            HStack(spacing: Dimensions.Spacing.spacing10) {
                Text("+0.0082%")
                    .foregroundColor(.green)
                Image(for: .upArrow)
                    .renderAsResizable(.fit)
                    .frame(width: Dimensions.FrameSize.size10, height: Dimensions.FrameSize.size10)
                    .padding(Dimensions.Padding.padding8)
                    .foregroundColor(.black)
                    .background(.green)
                    .clipShape(Circle())
            }
        }
        .padding(.horizontal, Dimensions.Padding.padding15)
        .padding(.vertical, Dimensions.Padding.padding8)
        .background(Color(LightTheme.gray400))
        .clipShape(RoundedRectangle(cornerRadius: Dimensions.CornerRadius.cornerRadius8))
    }
}
