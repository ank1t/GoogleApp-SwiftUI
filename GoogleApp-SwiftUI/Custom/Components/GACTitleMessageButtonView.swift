//
//  GACTitleMessageButtonView.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-02-08
//
        
import Foundation
import SwiftUI

struct GACTitleMessageButtonView: View {
    let titleConfig: GACTextConfig
    let messageConfig: GACTextConfig
    let buttonConfig: GACTextConfig
    
    var body: some View {
        ZStack {
            VStack {
                Text(titleConfig.text)
                    .applyTextStyle(titleConfig)
                
                Text(messageConfig.text)
                    .applyTextStyle(messageConfig)
                
                Button(action: {}) {
                    Text(buttonConfig.text)
                        .applyTextStyle(buttonConfig)
                }
                    
            }
        }
    }
}
