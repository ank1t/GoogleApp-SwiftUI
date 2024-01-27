//
//  HomePAge.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-19.
//

import SwiftUI

struct HomePage: View {
    @State private var searchQuery: String = ""
    private let searchTypes = [
        GACSearchOptionsView(title: "Translate text", subtitle: "with your camera", image: .translate),
        GACSearchOptionsView(title: "Search inside photos", subtitle: "from your camera", image: .searchImage),
        GACSearchOptionsView(title: "Identify song", subtitle: "by listening", image: .note),
        GACSearchOptionsView(title: "Shop for products", subtitle: "in your screenshots", image: .tag),
        GACSearchOptionsView(title: "Homework help", subtitle: "using your camera", image: .degree)]
    @State var profileScreenShown: Bool = false
    @State var profileIconFrame: CGRect = .zero
    @State var contentFrame: CGRect = .zero
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .topTrailing) {
                LightTheme.tabBarBGColor
                    .ignoresSafeArea()
                
                VStack(spacing: Dimensions.Spacing.spacing2) {
                    HStack {
                        Spacer()
                        Image(for: .user)
                            .renderAsResizable(.fit)
                            .frame(width: Dimensions.FrameSize.size25)
                            .padding([.top, .trailing])
                            .foregroundColor(.accentColor)
                            .overlay {
                                GeometryReader { proxy in
                                    Color.clear.onAppear {
                                        profileIconFrame = proxy.frame(in: .global)
                                    }
                                }
                            }
                            .onTapGesture {
                                withAnimation(.easeOut(duration: Constants.profileScreenAnimationDuration)) {
                                    profileScreenShown.toggle()
                                }
                            }
                    }
                    HStack {
                        Spacer()
                        ZStack {
                            Image(for: .google)
                                .renderAsResizable(.fit, false)
                                .frame(width: Dimensions.FrameSize.size40, height: Dimensions.FrameSize.size40)
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: Dimensions.Spacing.spacing15) {
                                    Spacer(minLength: Dimensions.Spacing.spacing250)
                                    GACStocksTileView()
                                    GACStocksTileView()
                                    GACStocksTileView()
                                    HStack {}
                                }
                            }
                        }
                    }
                    .padding(.top, Dimensions.Padding.padding20)
                    
                    GACSearchTextField()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: Dimensions.Spacing.spacing15) {
                            HStack {}
                                .frame(width: Dimensions.Spacing.spacing2)
                            ForEach(searchTypes) { $0 }
                            HStack {}
                                .frame(width: Dimensions.FrameSize.size5)
                        }
                    }
                    
                    Divider()
                        .padding(.top, Dimensions.Padding.padding10)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack {
                            GACLocalWeatherView()
                            ForEach(1..<10) { _ in
                                GACYouTubeArticlesView()
                            }
                        }
                    }
                }
                if profileScreenShown {
                    Color.black.opacity(Constants.overlayOpacity)
                        .ignoresSafeArea()
                        .onTapGesture {
                            profileScreenShown.toggle()
                        }
                }
                GACProfile(profileScreenShown: $profileScreenShown)
                    .frame(width: profileScreenShown ? contentFrame.width : 0, height: profileScreenShown ? contentFrame.height : 0)
                    .offset(x: profileScreenShown ? 0 : contentFrame.width, y: 0)
            }
            .preferredColorScheme(.dark)
        }
        .overlay {
            GeometryReader { proxy in
                Color.clear.onAppear {
                    contentFrame = proxy.frame(in: .global)
                }
            }
        }
    }
}
