//
//  GACRecentCollections.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-04-03
//
        
import Foundation
import SwiftUI

struct GACRecentCollections: View {
    let viewModel: GACRecentCollectionsVM
    
    var body: some View {
        VStack(alignment: .leading, spacing: Dimensions.Spacing.spacing0) {
            Image(for: viewModel.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: Dimensions.CornerRadius.cornerRadius8))
            
            Text(viewModel.title)
                .applyTextStyle(.white, .footnote)
                .padding(.top, Dimensions.Padding.padding5)
            
            Text("\(viewModel.itemCount) items")
                .applyTextStyle(.gray, .footnote)
        }
    }
}
