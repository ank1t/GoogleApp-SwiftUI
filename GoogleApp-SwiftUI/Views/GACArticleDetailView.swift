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
    @EnvironmentObject var newTabSetting: EnvironmentSettings
    
    var body: some View {
        VStack {
            GACArticleDetailTopBar()
                .environmentObject(newTabSetting)
            if networkMonitor.status == .connected {
                GACWebview(urlStr: newTabSetting.preSelectedURL ?? Constants.defaultURL)
            } else {
                GACNoNetworkConnection()
            }
            GACArticleDetailBottomBar()
                .environmentObject(newTabSetting)
        }
    }
}
