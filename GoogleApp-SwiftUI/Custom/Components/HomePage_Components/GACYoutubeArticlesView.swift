//
//  GACYoutubeArticlesView.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-19.
//

import Foundation
import SwiftUI

struct GACYouTubeArticlesView: View {
    let videoID: String
    var body: some View {
        VStack(spacing: Dimensions.Spacing.spacing15) {
            GACYoutubeThumbnail(videoID: videoID)
                .frame(height: Dimensions.FrameSize.size200)
                .clipShape(RoundedRectangle(cornerRadius:  Dimensions.CornerRadius.cornerRadius15))
            HStack {
                GACHeadlineChannelAuthorTimeView()
                Spacer()
                GACHeadlineArticleActionsView(url: Utility.generateYTURL(from: videoID))
            }
        }
        .padding(.horizontal, Dimensions.Padding.padding20)
        .padding(.top, Dimensions.Padding.padding15)
        
        Divider()
            .padding(.top, Dimensions.Padding.padding5)
    }
}
