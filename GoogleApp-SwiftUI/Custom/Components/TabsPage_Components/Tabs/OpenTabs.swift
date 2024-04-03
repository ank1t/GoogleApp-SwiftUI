//
//  OpenTabs.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-21
//
        
import Foundation
import SwiftUI

class EnvironmentSettings : ObservableObject {
    @Published var shouldShowWindow = false
    @Published var preSelectedURL: String?
    @Published var showActivityIndicator: Bool = false
}

struct OpenTabs: View {
    @StateObject var newTabSetting = EnvironmentSettings()
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            LightTheme.tabBarBGColor
                .ignoresSafeArea()
            
            Button(action: {
                newTabSetting.shouldShowWindow.toggle()
            }) {
                HStack(spacing: Dimensions.Spacing.spacing15) {
                    Image(for: .plus)
                        .resizable()
                        .frame(width: Dimensions.FrameSize.size15,
                               height: Dimensions.FrameSize.size15)
                        .foregroundColor(.white)
                    
                    Text("New Tab")
                        .applyTextStyle(.white, .callout)
                }
                .padding()
                .background(Color(cgColor: LightTheme.gray400))
                .cornerRadius(Dimensions.CornerRadius.cornerRadius15)
            }
            .offset(x: -30 ,y: -85)
            .fullScreenCover(isPresented: $newTabSetting.shouldShowWindow, content: {
                GACArticleDetailView()
                    .environmentObject(newTabSetting)
            })
        }
        
    }
}
