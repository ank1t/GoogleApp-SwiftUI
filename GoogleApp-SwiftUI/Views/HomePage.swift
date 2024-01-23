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
        GACSearchOptionsView(title: "Homework help", subtitle: "using your camera", image: .degree)
    ]
    @State var profileScreenShown: Bool = false
    @Namespace private var animation
    
    var body: some View {
        NavigationView {
            ZStack {
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
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    profileScreenShown.toggle()
                                }
                            }
                            .matchedGeometryEffect(id: "Profile-Transition", in: animation)
                        GACProfile(profileScreenShown: $profileScreenShown)
                                .frame(width: profileScreenShown ? UIScreen.main.bounds.width : 0,
                                       height: profileScreenShown ? UIScreen.main.bounds.height : 0)
                                .zIndex(100)
                                .ignoresSafeArea()
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
                        Spacer()
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
                            Image(systemName: "mic")
                                .renderingMode(.template)
                                .foregroundColor(.white)
                                .frame(width: Dimensions.FrameSize.size20, height: Dimensions.FrameSize.size20)
                            
                            Image(systemName: "camera")
                                .renderingMode(.template)
                                .foregroundColor(.white)
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
            }
            .preferredColorScheme(.dark)
        }
    }
}
