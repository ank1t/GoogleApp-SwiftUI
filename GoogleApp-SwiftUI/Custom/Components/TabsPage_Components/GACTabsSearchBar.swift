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
    @FocusState private var searchFieldIsFocused: Bool
    @State private var showingRecentActivity: Bool = false
    @StateObject var newTabSetting = NewTabSetting()
    
    var body: some View {
        ZStack {
            LightTheme.tabBarBGColor
                .ignoresSafeArea()
            VStack {
                HStack(spacing: Dimensions.Spacing.spacing20) {
                    if showingRecentActivity {
                        Image(for: .backChevron)
                            .foregroundColor(.gray)
                            .onTapGesture {
                                withAnimation(.easeInOut(duration: Constants.defaultAnimationDuration)) {
                                    searchFieldIsFocused = false
                                    searchStr = ""
                                }
                            }
                    }
                    HStack(spacing: Dimensions.Spacing.spacing10) {
                        Image(for: .searchRecent)
                            .foregroundColor(.gray)
                        TextField("",
                                  text: $searchStr,
                                  prompt: Text("Search tabs, collections and recents").foregroundColor(.gray))
                            .foregroundColor(.white)
                            .focused($searchFieldIsFocused)
                            .onChange(of: searchFieldIsFocused) { newValue in
                                withAnimation(.easeInOut(duration: Constants.defaultAnimationDuration)) {
                                    showingRecentActivity.toggle()
                                    if !newValue {
                                        searchStr = ""
                                    }
                                }
                            }
                    }
                    .padding(.vertical, Dimensions.Padding.padding10)
                    .padding(.horizontal, Dimensions.Padding.padding15)
                    .background(Color(LightTheme.gray400))
                    .clipShape(Capsule(style: .continuous))
                    if !showingRecentActivity {
                        Image(for: .searchPrevious)
                            .foregroundColor(.gray)
                        Image(for: .more)
                            .foregroundColor(.gray)
                    }
                }
                .padding(.vertical, Dimensions.Padding.padding10)
                .padding(.trailing, Dimensions.Padding.padding15)
                .padding(.leading, Dimensions.Padding.padding20)
                
                if showingRecentActivity {
                    GACRecentActivity(searchTerm: $searchStr)
                        .environmentObject(newTabSetting)
                } else {
                    AnimatedTabs()
                }
            }
        }
    }
}
