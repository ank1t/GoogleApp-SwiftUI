//
//  GACProfileRowView.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-19.
//

import Foundation
import SwiftUI

enum GACProfileDividerView {
    case top
    case bottom
    case none
}

struct GACProfileRowView: View {
    let profileRow: GACProfileRow
    
    var body: some View {
        VStack(alignment: .leading, spacing: Dimensions.Spacing.spacing0) {
            if profileRow.divider == .top {
                Divider()
                    .background(.white)
                    .padding(.leading, profileRow.dividerInset)
            }
            
            HStack {
                Image(for: profileRow.imageName)
                    .renderAsResizable(.fit)
                    .foregroundColor(.white)
                    .frame(height: profileRow.iconSize)
                    .padding(.horizontal, Dimensions.Padding.padding15)
                
                Text(profileRow.title)
                    .font(.system(size: Dimensions.FontSize.font14))
                    .foregroundColor(.white)
                
                Spacer()
                
                if profileRow.disclosureIndicator != nil {
                    profileRow.disclosureIndicator?
                        .renderAsResizable(.fit)
                        .frame(width: Dimensions.FrameSize.size10)
                }
                
            }
            .padding(.top, profileRow.divider == .top ? Dimensions.Padding.padding12 : Dimensions.Padding.padding5)
            .padding(.bottom, profileRow.divider == .bottom ? Dimensions.Padding.padding12 : Dimensions.Padding.padding5)
            
            if profileRow.divider == .bottom {
                Divider()
                    .background(.white)
                    .padding(.leading, profileRow.dividerInset)
            }
        }
    }
}
