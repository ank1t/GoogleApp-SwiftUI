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
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
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
                                .resizable()
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
                    
                    ZStack {
                        TextField("", text: $searchQuery, prompt: Text("Search").foregroundColor(Color(.white)))
                            .padding(.vertical)
                            .padding(.horizontal, Dimensions.Padding.padding24)
                            .background(Color(LightTheme.gray400))
                            .clipShape(Capsule(style: .continuous))
                            .font(.system(size: Dimensions.FontSize.font18))
                            .foregroundColor(Color(.white))
                            .padding()
                        
                        HStack {
                            Spacer()
                            Image(for: .mic)
                                .renderingMode(.template)
                                .resizable()
                                .foregroundColor(.white)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: Dimensions.FrameSize.size20, height: Dimensions.FrameSize.size20)
                            
                            Image(for: .camera)
                                .renderingMode(.template)
                                .resizable()
                                .foregroundColor(.white)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: Dimensions.FrameSize.size20, height: Dimensions.FrameSize.size20)
                                .padding(.horizontal)
                                .padding(.trailing, Dimensions.Padding.padding24)
                        }
                        .opacity(searchQuery.isEmpty ? 1: 0)
                    }
                    
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
