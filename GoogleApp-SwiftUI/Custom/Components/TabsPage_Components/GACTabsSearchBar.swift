//
//  GACTabsSearchBar.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-09
//
        
import Foundation
import SwiftUI

struct GACTabsSearchBarAndResults: View {
    @State var searchStr: String = ""
    
    var body: some View {
        ZStack {
            LightTheme.tabBarBGColor
                .ignoresSafeArea()
            VStack {
                HStack(spacing: Dimensions.Spacing.spacing10) {
                    Image(for: .backChevron)
                        .foregroundColor(.gray)
                    HStack(spacing: Dimensions.Spacing.spacing10) {
                        Image(for: .searchRecent)
                            .foregroundColor(.gray)
                        TextField("Search tabs, collections and recents", text: $searchStr)
                    }
                }
                .padding(.vertical, Dimensions.Padding.padding10)
                .padding(.horizontal, Dimensions.Padding.padding15)
                Spacer()
            }
        }
    }
}
