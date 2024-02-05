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
    @State private var spacerFrame: CGRect = .zero
    
    var body: some View {
        ZStack(alignment: .leading) {
            TextField("",
                      text: $url)
            .padding(.vertical)
            .padding(.leading, Dimensions.Padding.padding45)
            .background(Color(LightTheme.gray400))
            .clipShape(Capsule(style: .continuous))
            .font(.system(size: Dimensions.FontSize.font14, weight: .semibold))
            .foregroundColor(Color(.white))
            .frame(width: spacerFrame.width)
            
            HStack {
                Image(for: .secureLock)
                    .renderAsResizable(.fit)
                    .foregroundColor(.white)
                    .frame(width: Dimensions.FrameSize.size15, height: Dimensions.FrameSize.size15)
                
                Spacer()
                    .overlay {
                        GeometryReader { proxy in
                            Color
                                .clear
                                .onAppear {
                                    spacerFrame = proxy.frame(in: .global)
                                }
                        }
                        
                    }
                
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
            }
            .padding(.leading, Dimensions.Padding.padding20)
        }
        .padding(.horizontal, Dimensions.Padding.padding15)
    }
}
