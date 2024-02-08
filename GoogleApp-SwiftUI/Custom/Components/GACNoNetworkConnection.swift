//
//  GACNoNetworkConnection.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-02-07
//
        
import SwiftUI

struct GACNoNetworkConnection: View {
    var body: some View {
        VStack(spacing: Dimensions.Spacing.spacing25) {
            Spacer()
            Image(for: .noNetwork)
                .renderAsResizable(.fit)
                .frame(height: Dimensions.FrameSize.size50)
            
            Text("No network connection")
                .foregroundColor(.white)
            
            Button(action: {}) {
                GACTextWithBackground(text: "Try again", fontSize: Dimensions.FontSize.font14,
                                      textColor: .black, horizontalPadding: Dimensions.Padding.padding12,
                                      verticalPadding: Dimensions.Padding.padding8, backgroundColor: .teal,
                                      Shape: Capsule())
            }
            Spacer()
        }
    }
}
