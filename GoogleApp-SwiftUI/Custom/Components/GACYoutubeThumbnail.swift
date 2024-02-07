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
            Color.gray
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
                
                Text("00:57")
                    .font(.system(size: Dimensions.FontSize.font12))
                    .foregroundColor(.white)
                    .padding(.horizontal, Dimensions.Padding.padding8)
                    .padding(.vertical, Dimensions.Padding.padding2)
                    .background(.black)
                    .clipShape(Capsule())
                    .offset(x: Dimensions.Offset.offset10, y: -Dimensions.Offset.offset10)
            }
        }
    }
}
