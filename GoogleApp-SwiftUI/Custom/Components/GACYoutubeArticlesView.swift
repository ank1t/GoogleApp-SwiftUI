//
//  GACYoutubeArticlesView.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-19.
//

import Foundation
import WebKit
import SwiftUI

private struct YouTubePlayerView: UIViewRepresentable {
    let videoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ view: WKWebView, context: Context) {
        guard let url = URL(string: "https://www.youtube.com/embed/\(videoID)") else { return }
        view.scrollView.isScrollEnabled = false
//        view.load(URLRequest(url: url))
    }
}


struct GACYouTubeArticlesView: View {
    var body: some View {
        VStack(spacing: Dimensions.Spacing.spacing15) {
            YouTubePlayerView(videoID: "")
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
