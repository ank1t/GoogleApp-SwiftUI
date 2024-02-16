//
//  GACTabPageSearchResult.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-02-13
//
        
import Foundation
import SwiftUI

struct GACTabPageSearchResult: View {
    let date: String
    let url: String
    
    var subtitle: String {
        date + Constants.bulletPoint + url
    }
    
    var body: some View {
        HStack(spacing: Dimensions.Spacing.spacing10) {
            Image(for: .noNetwork)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: Dimensions.Spacing.spacing5) {
                Text("The Mysterious prehistoric undercaves")
                    .font(.system(size: Dimensions.FontSize.font14))
                    .foregroundColor(.white)
                
                Text(subtitle)
                    .font(.system(size: Dimensions.FontSize.font10))
                    .foregroundColor(.gray)
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: Dimensions.CornerRadius.cornerRadius8))
    }
}
