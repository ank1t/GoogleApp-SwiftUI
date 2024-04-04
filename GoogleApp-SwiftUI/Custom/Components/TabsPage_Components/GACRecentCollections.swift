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
        VStack(alignment: .leading, spacing: Dimensions.Spacing.spacing5) {
            Image(for: image)
                .resizable()
                .frame(width: viewModel.imageSize.width,
                       height: viewModel.imageSize.height)
            
            Text(viewModel.title)
                .applyTextStyle(.white, .footnote)
            
            Text("\(viewModel.itemCount) items")
                .applyTextStyle(.gray, .footnote)
        }
    }
}
