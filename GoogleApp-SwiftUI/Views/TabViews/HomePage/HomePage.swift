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
    @State var staticSearchFieldFrame: CGRect = .zero
    @State var textfieldIsActive: Bool = false
    @State var networkDialogVisible: Bool = false
    @State var scrollViewOffset: CGPoint = .zero
    @State var shouldShowStaticSearchbar: Bool = false
    
    @Namespace private var animation
    @StateObject var networkMonitor = Monitor()
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .topTrailing) {
                LightTheme.tabBarBGColor
                    .ignoresSafeArea()
                
                OffsetObservingScrollView(showsIndicators: false,
                                          offset: $scrollViewOffset) {
                    VStack(spacing: Dimensions.Spacing.spacing2) {
                        HStack {
                            Spacer()
                            Image(for: .user)
                                .renderAsResizable(.fit)
                                .frame(width: Dimensions.FrameSize.size25)
                                .padding([.top, .trailing])
                                .foregroundColor(.accentColor)
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
                        
                        GACSearchTypesView()
                        Divider()
                            .padding(.top, Dimensions.Padding.padding10)
                        
                        LazyVStack {
                            GACLocalWeatherView()
                            ForEach(1..<10) { _ in
                                GACYouTubeArticlesView(videoID: "FelYPK4p3Bo")
                                GACHeadlinesView(url: "https://cnn.com")
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
                
                ZStack {
                    VStack(spacing: Dimensions.Spacing.spacing0) {
                        LightTheme.tabBarBGColor
                            .ignoresSafeArea(edges: .top)
                            .frame(height: staticSearchFieldFrame.height)
                        Divider()
                    }
                    GACSearchTextField(appearence: .homepage,
                                       textfieldIsActive: $textfieldIsActive)
                }
                
                if textfieldIsActive {
                    GACTrendingSearchesView(textfieldIsActive: $textfieldIsActive)
                        .ignoresSafeArea()
                }
                
                if !networkDialogVisible && networkMonitor.status != .connected  {
                    presentNoNetworkConnectionDialog()
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
        .onChange(of: scrollViewOffset) { newValue in
            print(newValue)
            print("Search field frame is \(staticSearchFieldFrame)")
        }
    }
    
    private func presentNoNetworkConnectionDialog() -> GACTitleMessageButtonView {
        let titleConfig = GACTextConfig(text: "You are offline",
                                        textColor: .white,
                                        textFont: .system(size: Dimensions.FontSize.font24))
        
        let messageConfig = GACTextConfig(text: "Go to Settings and check your internet connection",
                                          textColor: .gray,
                                          textFont: .system(size: Dimensions.FontSize.font15))
        
        let CTAButtonConfig = GACTextConfig(text: "OK",
                                            textColor: .black,
                                            textFont: .system(size: Dimensions.FontSize.font15))
        
        return GACTitleMessageButtonView(titleConfig: titleConfig,
                                         messageConfig: messageConfig,
                                         buttonConfig: CTAButtonConfig,
                                         dialogVisibility: $networkDialogVisible)
    }
}
