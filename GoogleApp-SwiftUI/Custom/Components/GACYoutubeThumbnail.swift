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
            VStack {
                HStack {
                    ZStack(alignment: .center) {
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
            }
        }
    }
}
