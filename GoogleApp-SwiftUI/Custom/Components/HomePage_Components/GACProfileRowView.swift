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
    @State private var disclosureRotationAngle: CGFloat
    @Binding var showProfileRelatedRows: Bool
    
    init(profileRow: GACProfileRow,
         disclosureRotationAngle: CGFloat = 0,
         showProfileRelatedRows: Binding<Bool> = .constant(false)) {
        self.profileRow = profileRow
        self.disclosureRotationAngle = disclosureRotationAngle
        _showProfileRelatedRows = showProfileRelatedRows
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: Dimensions.Spacing.spacing0) {
            if profileRow.divider == .top {
                Divider()
                    .background(.white)
                    .padding(.leading, profileRow.dividerInset)
            }
            
            HStack {
                Image(for: profileRow.imageName)
                    .renderAsResizable(.fit, profileRow.renderImageAsTemplate)
                    .foregroundColor(.white)
                    .frame(height: profileRow.iconSize)
                    .padding(.horizontal, Dimensions.Padding.padding15)
                
                VStack(alignment: .leading) {
                    Text(profileRow.title)
                        .font(.system(size: profileRow.subtitle == nil ? Dimensions.FontSize.font14 : Dimensions.FontSize.font12))
                        .foregroundColor(.white)
                    
                    if let subtitle = profileRow.subtitle {
                        Text(subtitle)
                            .font(.system(size: Dimensions.FontSize.font10))
                            .foregroundColor(.gray)
                    }
                }
                
                Spacer()
                
                if let disclosureIcon = profileRow.disclosureIndicator {
                    disclosureIcon
                        .renderAsResizable(.fit)
                        .frame(width: Dimensions.FrameSize.size20, height: Dimensions.FrameSize.size20)
                        .padding(.horizontal, Dimensions.Padding.padding20)
                        .rotationEffect(Angle(degrees: disclosureRotationAngle))
                        .onTapGesture {
                            showProfileRelatedRows.toggle()
                            withAnimation(.easeIn(duration: Constants.disclosureAnimationDuration)) {
                                disclosureRotationAngle += 180
                            }
                            disclosureRotationAngle = disclosureRotationAngle.truncatingRemainder(dividingBy: 360)
                        }
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
