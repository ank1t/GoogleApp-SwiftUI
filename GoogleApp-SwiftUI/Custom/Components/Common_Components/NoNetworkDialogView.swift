//
//  NoNetworkDialogView.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-03
//
        
import Foundation
import SwiftUI

struct NoNetworkDialogView: View {
    @Binding var dialogIsVisible: Bool
    
    let titleConfig = GACTextConfig(text: "You are offline",
                                    textColor: .white,
                                    textFont: .system(size: Dimensions.FontSize.font24))
    
    let messageConfig = GACTextConfig(text: "Go to Settings and check your internet connection",
                                      textColor: .gray,
                                      textFont: .system(size: Dimensions.FontSize.font15))
    
    let CTAButtonConfig = GACTextConfig(text: "OK",
                                        textColor: .black,
                                        textFont: .system(size: Dimensions.FontSize.font15))
    
    var body: some View {
        GACTitleMessageButtonView(titleConfig: titleConfig,
                                  messageConfig: messageConfig,
                                  buttonConfig: CTAButtonConfig,
                                  dialogVisibility: $dialogIsVisible)
    }
}
