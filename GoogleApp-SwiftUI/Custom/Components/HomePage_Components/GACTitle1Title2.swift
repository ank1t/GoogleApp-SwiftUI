//
//  GACTitle1Title2.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-19.
//

import Foundation
import SwiftUI

struct GACTitle1Title2: View {
    let title1: String
    let title2: String
    
    var body: some View {
        HStack(spacing: Dimensions.Spacing.spacing5) {
            Spacer()
            Text(title1)
                .foregroundColor(.white)
                .font(.system(size: Dimensions.FontSize.font11))
            Text(Constants.bulletPoint)
                .foregroundColor(.white)
            Text(title2)
                .foregroundColor(.white)
                .font(.system(size: Dimensions.FontSize.font11))
            Spacer()
        }
        .padding(.bottom, Dimensions.Padding.padding10)
    }
}
