//
//  GACWebview.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh,Ankit on 2024-01-27.
//

import Foundation
import SwiftUI

struct GACArticleDetailView: View {
    @StateObject var networkMonitor = Monitor()
    
    var body: some View {
        VStack {
            GACArticleDetailTopBar()
            if networkMonitor.status == .connected {
                GACWebview(urlStr: "https://cnn.com")
            } else {
                GACNoNetworkConnection()
            }
            GACArticleDetailBottomBar()
        }
    }
}
