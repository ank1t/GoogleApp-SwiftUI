//
//  HomePAge.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-19.
//

import SwiftUI

struct HomePage: View {
    @State private var searchQuery: String = ""
    @State var profileScreenShown: Bool = false
    @State var profileIconFrame: CGRect = .zero
    @State var contentFrame: CGRect = .zero
    @State var textfieldIsActive: Bool = false
    
    @Namespace private var animation
    
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
                    
                    GACSearchTextField(appearence: .homepage,
                                       textfieldIsActive: $textfieldIsActive)
                    .matchedGeometryEffect(id: Constants.animationID, in: animation)
                        
                    GACSearchTypesView()
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
                
                if textfieldIsActive {
                    GACTrendingSearchesView(textfieldIsActive: $textfieldIsActive)
                        .ignoresSafeArea()
                }
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
