//
//  GACSearchTextField.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-26.
//

import SwiftUI

enum TextfieldAppearence {
    case homepage
    case trendingPage
    
    var searchFieldText: String {
        isHomePage ? Constants.searchTextfieldPlaceholder : Constants.searchOrURLTextfieldPlaceholder
    }
    
    var fontSize: CGFloat {
        isHomePage ? Dimensions.FontSize.font24 : Dimensions.FontSize.font16
    }
    
    var placeholderColor: Color {
        isHomePage ? .white : .gray
    }
    
    var hPadding: CGFloat {
        isHomePage ? Dimensions.Padding.padding24 : Dimensions.Padding.padding50
    }
    
    private var isHomePage: Bool {
        self == .homepage
    }
}

struct GACSearchTextField: View {
    @State var searchQuery: String = ""
    @State var appearence: TextfieldAppearence
    @Binding var textfieldIsActive: Bool
    @FocusState private var isFocused: Bool
    
    var body: some View {
        ZStack {
            TextField("",
                      text: $searchQuery,
                      prompt: Text(appearence.searchFieldText).foregroundColor(appearence.placeholderColor))
                .padding(.vertical)
                .padding(.horizontal, appearence.hPadding)
                .background(Color(LightTheme.gray400))
                .clipShape(Capsule(style: .continuous))
                .font(.system(size: appearence.fontSize))
                .foregroundColor(Color(.white))
                .padding()
                .onTapGesture {
                    if appearence == .homepage {
                        withAnimation(.spring()) {
                            textfieldIsActive.toggle()
                        }
                    }
                }
                .focused($isFocused)
            
            HStack {
                if appearence == .trendingPage {
                    Image(for: .backChevron)
                        .renderAsResizable(.fit)
                        .foregroundColor(.white)
                        .frame(width: Dimensions.FrameSize.size20, height: Dimensions.FrameSize.size20)
                        .padding(.leading, Dimensions.Padding.padding32)
                        .contentShape(Rectangle())
                        .allowsHitTesting(true)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                textfieldIsActive.toggle()
                                isFocused.toggle()
                            }
                        }
                        .onAppear {
                            isFocused = true
                        }
                        .onDisappear {
                            isFocused = false
                        }
                }
                
                HStack {
                    Spacer()
                    Image(for: .mic)
                        .renderAsResizable(.fit)
                        .foregroundColor(.white)
                        .frame(width: Dimensions.FrameSize.size20, height: Dimensions.FrameSize.size20)
                    
                    Image(for: .camera)
                        .renderAsResizable(.fit)
                        .foregroundColor(.white)
                        .frame(width: Dimensions.FrameSize.size20, height: Dimensions.FrameSize.size20)
                        .padding(.horizontal)
                        .padding(.trailing, Dimensions.Padding.padding24)
                }
                .opacity(searchQuery.isEmpty ? 1: 0)
            }
        }
    }
}
