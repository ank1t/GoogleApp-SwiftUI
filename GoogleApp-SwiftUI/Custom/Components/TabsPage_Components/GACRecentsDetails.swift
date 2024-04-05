//
//  GACRecentsDetails.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-04-04
//
        
import Foundation
import SwiftUI

struct GACRecentsDetails: View {
    
    var body: some View {
        VStack(spacing: Dimensions.Spacing.spacing10) {
            HStack(spacing: Dimensions.Spacing.spacing10) {
                Text("Interests")
                    .applyTextStyle(.white, .subheadline)
                Spacer()
                
                Image(for: .help)
                    .resizable()
                    .frame(width: Dimensions.FrameSize.size40,
                           height: Dimensions.FrameSize.size40)
                
                Image(for: .user)
                    .resizable()
                    .frame(width: Dimensions.FrameSize.size40,
                           height: Dimensions.FrameSize.size40)
                
            }
        }
    }
}
