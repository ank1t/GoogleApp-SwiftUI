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
    @StateObject var newTabSetting = EnvironmentSettings()
    
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
                        
                        Menu {
                            Button(role: nil) {
                                UIPasteboard.general.string = newTabSetting.preSelectedURL
                            } label: {
                                Label("Copy URL", systemImage: Utility.ImageName.copy.rawValue)
                            }
                            
                            Button(role: nil) { } label: {
                                Label("Find on page", systemImage: Utility.ImageName.searchMenu.rawValue)
                            }
                            
                            Button(role: nil) { } label: {
                                Label("Read aloud", systemImage: Utility.ImageName.read.rawValue)
                            }
                            
                            Button(role: nil) { } label: {
                                Label("Refresh", systemImage: Utility.ImageName.reload.rawValue)
                            }
                        } label: {
//                            Image(for: .more)
//                                .renderAsResizable(.fit)
//                                .foregroundColor(.white)
//                                .frame(width: Dimensions.FrameSize.size15,
//                                       height: Dimensions.FrameSize.size15)
//                                .padding(.trailing, Dimensions.Padding.padding12)
//                                .contentShape(Rectangle())
//                                .allowsHitTesting(true)
                            Image(for: .more)
                                .foregroundColor(.gray)
                                .contentShape(Rectangle())
                                .allowsHitTesting(true)
                        }
                        .preferredColorScheme(.dark)
                        
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
