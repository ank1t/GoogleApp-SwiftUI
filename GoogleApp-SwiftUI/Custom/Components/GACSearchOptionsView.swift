//
//  GACSearchOptionsView.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Admin on 2024-01-19.
//

import SwiftUI

struct GACSearchOptionsView: View, Identifiable {
    let title: String
    let subtitle: String
    let image: Utility.ImageName
    let id: UUID = UUID()
    
    var body: some View {
        HStack {
            Image(for: image)
                .renderingMode(.template)
                .resizable()
                .foregroundColor(.white)
                .frame(width: Dimensions.FrameSize.size15, height: Dimensions.FrameSize.size15)
                .padding(Dimensions.Padding.padding8)
                .background(.black)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: Dimensions.Spacing.spacing2) {
                Text(title)
                    .foregroundColor(.white)
                    .font(.system(size: Dimensions.FontSize.font14))
                
                Text(subtitle.uppercased())
                    .foregroundColor(Color(UIColor.systemGray))
                    .font(.system(size: Dimensions.FontSize.font10))
            }
        }
        .padding(.leading, Dimensions.Padding.padding12)
        .padding(.trailing, Dimensions.Padding.padding20)
        .padding(.vertical, Dimensions.Padding.padding12)
        .background(Color(LightTheme.gray400))
        .clipShape(Capsule())
    }
}
