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
    @EnvironmentObject private var newTabSetting: NewTabSetting
    
    var body: some View {
        VStack {
            GACArticleDetailTopBar()
                .environmentObject(newTabSetting)
            if networkMonitor.status == .connected {
                GACWebview(urlStr: "https://cnn.com")
            } else {
                GACNoNetworkConnection()
            }
            GACArticleDetailBottomBar()
                .environmentObject(newTabSetting)
        }
    }
}
