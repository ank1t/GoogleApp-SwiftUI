//
//  GACYoutubeArticlesView.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-19.
//

import Foundation
import SwiftUI

struct GACYouTubeArticlesView: View {
    var body: some View {
        VStack(spacing: Dimensions.Spacing.spacing15) {
            GACYoutubeThumbnail(videoID: "FelYPK4p3Bo")
                .frame(height: Dimensions.FrameSize.size200)
                .clipShape(RoundedRectangle(cornerRadius:  Dimensions.CornerRadius.cornerRadius15))
            HStack {
                GACHeadlineChannelAuthorTimeView()
                Spacer()
                GACHeadlineArticleActionsView()
            }
        }
        .padding(.horizontal, Dimensions.Padding.padding20)
        .padding(.top, Dimensions.Padding.padding15)
        
        Divider()
            .padding(.top, Dimensions.Padding.padding5)
    }
}
