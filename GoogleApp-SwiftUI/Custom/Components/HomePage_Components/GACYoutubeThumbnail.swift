//
//  GACWebview.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-02-05
//

import Foundation
import SwiftUI

struct GACYoutubeThumbnail: View {
    @YoutubeURL var videoID: String
    
    var body: some View {
        ZStack {
            Image(for: .eclipse)
                .resizable()
                .frame(height: 200)
            
            VStack(alignment: .leading) {
                Spacer()
                HStack {
                    ZStack {
                        Color
                            .black
                            .frame(height: Dimensions.FrameSize.size50)
                            .clipShape(Circle())
                            
                        Image(for: .play)
                            .renderAsResizable(.fit)
                            .frame(height: Dimensions.FrameSize.size25)
                            .padding(.leading, Dimensions.Padding.padding5)
                    }
                }
                .padding(.top, Dimensions.Padding.padding10)
                Spacer()
                
                GACTextWithBackground(text: "00:57", fontSize: Dimensions.FontSize.font12,
                                      textColor: .white, horizontalPadding: Dimensions.Padding.padding8,
                                      verticalPadding: Dimensions.Padding.padding4, backgroundColor: .black,
                                      Shape: Capsule())
                    .offset(x: Dimensions.Offset.offset10, y: -Dimensions.Offset.offset10)
            }
        }
    }
}
