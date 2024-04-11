//
//  GACHeadlinesView.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-19.
//

import Foundation
import SwiftUI

struct GACHeadlinesView: View {
    let url: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: Dimensions.Spacing.spacing5) {
            HStack(alignment: .top, spacing: Dimensions.Spacing.spacing10) {
                Text("Some long news article text that should go to 2 lines")
                    .font(.system(size: Dimensions.FontSize.font18, weight: .medium))
                    .foregroundColor(.white)
                Spacer()
                Image(for: .basketball)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: Dimensions.FrameSize.size100, height: Dimensions.FrameSize.size100)
                    .clipShape(RoundedRectangle(cornerRadius: Dimensions.CornerRadius.cornerRadius15))
            }
            HStack {
                GACHeadlineChannelAuthorTimeView(logo: .np)
                Spacer()
                GACHeadlineArticleActionsView(url: url)
            }
            .padding(.top, Dimensions.Padding.padding10)
        }
        .padding(.horizontal, Dimensions.Padding.padding20)
        .padding(.top, Dimensions.Padding.padding15)
        
        Divider()
            .padding(.top, Dimensions.Padding.padding10)
    }
}
