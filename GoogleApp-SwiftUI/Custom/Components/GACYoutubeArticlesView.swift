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
    @YoutubeURL let videoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        let urlRequest = URLRequest(url: URL(string: videoID)!)
        webView.scrollView.isScrollEnabled = false
        //        view.load(URLRequest(url: url))
        return webView
    }
    
    func updateUIView(_ view: WKWebView, context: Context) {
        
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
