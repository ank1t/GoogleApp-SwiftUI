//
//  GACWebview.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-02-06
//

/*
 https://forums.developer.apple.com/forums/thread/713290
 */
import Foundation
import WebKit
import SwiftUI

struct GACWebview: UIViewRepresentable {
    let urlStr: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ view: WKWebView, context: Context) {
        guard let url = URL(string: urlStr) else { return }
        view.load(URLRequest(url: url))
    }
}
