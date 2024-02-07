//
//  GACWebview.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-02-06
//
        
import Foundation
import WebKit
import SwiftUI

struct GACWebview: UIViewRepresentable {
    let urlStr: String
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        guard let url = URL(string: urlStr) else {
            return webView
        }
        webView.load(URLRequest(url: url))
        return webView
    }
    
    func updateUIView(_ view: WKWebView, context: Context) {
        
    }
}
