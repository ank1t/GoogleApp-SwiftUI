//
//  GACSearchTypesView.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-28.
//

import SwiftUI

struct GACSearchTypesView: View {
    private let searchTypes = [
        GACSearchOptionsView(title: "Translate text", subtitle: "with your camera", image: .translate),
        GACSearchOptionsView(title: "Search inside photos", subtitle: "from your camera", image: .searchImage),
        GACSearchOptionsView(title: "Identify song", subtitle: "by listening", image: .note),
        GACSearchOptionsView(title: "Shop for products", subtitle: "in your screenshots", image: .tag),
        GACSearchOptionsView(title: "Homework help", subtitle: "using your camera", image: .degree)]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: Dimensions.Spacing.spacing15) {
                HStack {}
                    .frame(width: Dimensions.Spacing.spacing2)
                ForEach(searchTypes) { $0 }
                HStack {}
                    .frame(width: Dimensions.FrameSize.size5)
            }
        }
    }
}
