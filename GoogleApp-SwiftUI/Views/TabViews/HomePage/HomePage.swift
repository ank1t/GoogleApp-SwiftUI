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
    @State var searchFieldFrame: CGRect = .zero
    @State var staticSearchFieldFrame: CGRect = .zero
    @State var textfieldIsActive: Bool = false
    @State var networkDialogVisible: Bool = false
    @State var scrollViewOffset: CGPoint = .zero
    @State var shouldShowStaticSearchbar: Bool = false
    @State var tileOpacity: Double = 1
    @State var searchTypeOpacity: Double = 1
    @State var dividerOpacity: Double = 0
    @State var isHistoryModalPresented: Bool = false
    @State private var showProfileRelatedRows: Bool = false
    
    @Namespace private var animation
    @StateObject var networkMonitor = Monitor()
    
    var body: some View {
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
                                withAnimation(.easeOut(duration: Constants.shortAnimationDuration)) {
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
                                .opacity(tileOpacity)
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: Dimensions.Spacing.spacing15) {
                                    Spacer(minLength: Dimensions.Spacing.spacing250)
                                    ForEach(1...3, id: \.self) { _ in
                                        GACStocksTileView()
                                    }
                                    HStack {}
                                }
                            }
                            .opacity(tileOpacity)
                        }
                    }
                    .padding(.top, Dimensions.Padding.padding20)
                    
                    GACSearchTextField(appearence: .homepage,
                                       textfieldIsActive: $textfieldIsActive)
                    .overlay {
                        GeometryReader { proxy in
                            Color.clear.onAppear {
                                searchFieldFrame = proxy.frame(in: .global)
                            }
                        }
                    }
                    .opacity(!shouldShowStaticSearchbar ? 1 : 0)
                    
                    GACSearchTypesView()
                        .opacity(searchTypeOpacity)
                    Divider()
                        .padding(.top, Dimensions.Padding.padding10)
                        .overlay {
                            GeometryReader { proxy in
                                Color.clear.onAppear {
                                    searchFieldFrame = proxy.frame(in: .global)
                                }
                            }
                        }
                    LazyVStack {
                        GACLocalWeatherView()
                        ForEach(1..<10) { _ in
                            GACYouTubeArticlesView(videoID: "FelYPK4p3Bo")
                            GACHeadlinesView(url: "https://cnn.com")
                            GACCarouselArticleView()
                        }
                    }
                }
            }
            
            if profileScreenShown {
                Color.black.opacity(Constants.overlayOpacity)
                    .ignoresSafeArea()
                    .onTapGesture {
                        profileScreenShown.toggle()
                        showProfileRelatedRows = false
                    }
            }
            GACProfile(profileScreenShown: $profileScreenShown,
                       showProfileRelatedRows: $showProfileRelatedRows)
            .frame(width: profileScreenShown ? contentFrame.width : nil, height: profileScreenShown ? contentFrame.height : nil)
            .offset(x: profileScreenShown ? 0 : contentFrame.width, y: 0)
            .opacity(profileScreenShown ? 1 : 0)
            
            if shouldShowStaticSearchbar {
                ZStack {
                    VStack(spacing: Dimensions.Spacing.spacing0) {
                        LightTheme.tabBarBGColor
                            .ignoresSafeArea(edges: .top)
                            .frame(height: staticSearchFieldFrame.height)
                        Divider()
                            .opacity(dividerOpacity)
                    }
                    GACSearchTextField(appearence: .homepage,
                                       textfieldIsActive: $textfieldIsActive)
                    .overlay {
                        GeometryReader { proxy in
                            Color.clear.onAppear {
                                staticSearchFieldFrame = proxy.frame(in: .global)
                            }
                        }
                    }
                }
            }
            
            if textfieldIsActive {
                GACTrendingSearchesView(textfieldIsActive: $textfieldIsActive)
                    .ignoresSafeArea()
            }
            
            if isHistoryModalPresented {
                BottomDrawerSheet(config: BottomSheetDrawerConfig(isPresented: $isHistoryModalPresented))
            }
            
            if !networkDialogVisible && networkMonitor.status != .connected  {
                NoNetworkDialogView(dialogIsVisible: $networkDialogVisible)
            }
        }
        .preferredColorScheme(.dark)
        .overlay {
            GeometryReader { proxy in
                Color.clear.onAppear {
                    contentFrame = proxy.frame(in: .global)
                }
            }
        }
        .onChange(of: scrollViewOffset) { newValue in
            shouldShowStaticSearchbar = scrollViewOffset.y >= 151.5
            /*
             scrollViewOffset.y begins at 0 and increases as the user scrolls vertically.
             */
            tileOpacity = scrollViewOffset.y > 0 ? 1 - (scrollViewOffset.y / 151.5) : 1
            searchTypeOpacity = scrollViewOffset.y > 0 ? 1 - (scrollViewOffset.y / 250) : 1
            dividerOpacity = scrollViewOffset.y > 220 ? 1 : 0
        }
    }
}
