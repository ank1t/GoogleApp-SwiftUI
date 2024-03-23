//
//  GACOpenTab.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-09
//
        
import Foundation
import SwiftUI

struct GACOpenTab: View {
    let width: CGFloat = (Utility.screenWidth - 50)/2
    let height: CGFloat = (Utility.screenWidth - 50)/2 * 1.2
    let url: String
    
    var body: some View {
        VStack {
            GACWebview(urlStr: url)
        }
        .clipShape(RoundedCorners(radius: Dimensions.CornerRadius.cornerRadius15))
        .frame(width: width,
               height: height)
    }
}
