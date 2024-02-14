//
//  GACURLView.swift
//  GoogleApp-SwiftUI
//
//  Created by Admin on 2024-02-04.
//

import Foundation
import SwiftUI

struct GACURLView: View {
    @State private var url: String = "https://www.google.com"
    
    var body: some View {
        HStack {
            Image(for: .secureLock)
                .renderAsResizable(.fit)
                .foregroundColor(.white)
                .frame(width: Dimensions.FrameSize.size15, height: Dimensions.FrameSize.size15)
                .padding(.leading, Dimensions.Padding.padding15)
            
            TextField("", text: $url)
                .padding(.vertical)
                .font(.system(size: Dimensions.FontSize.font14, weight: .semibold))
                .foregroundColor(Color(.white))
            
            Image(for: .bookmark)
                .renderAsResizable(.fit)
                .foregroundColor(.white)
                .frame(width: Dimensions.FrameSize.size15, height: Dimensions.FrameSize.size15)
                .padding(.trailing, Dimensions.Padding.padding15)
            
            Image(for: .share)
                .renderAsResizable(.fit)
                .foregroundColor(.white)
                .frame(width: Dimensions.FrameSize.size15, height: Dimensions.FrameSize.size15)
                .padding(.trailing, Dimensions.Padding.padding10)
                .contentShape(Rectangle())
                .allowsHitTesting(true)
                .onTapGesture {
                    guard let urlFromLink = URL(string: url) else { return }
                    Utility.shareActivityItems([urlFromLink])
                }
        }
        .frame(height: Dimensions.FrameSize.size40)
        .overlay(
            Capsule(style: .continuous)
                .stroke(.gray, lineWidth: 1))
    }
}
