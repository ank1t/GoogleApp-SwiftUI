//
//  GACSearchTextField.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-26.
//

import SwiftUI

enum TextfieldAppearence {
    case homepageLook
    case trendingPageLook
    
    var searchFieldText: String {
        self == .homepageLook ? Constants.searchTextfieldPlaceholder : Constants.searchOrURLTextfieldPlaceholder
    }
    
    var fontSize: CGFloat {
        self == .homepageLook ? Dimensions.FontSize.font24 : Dimensions.FontSize.font16
    }
    
    var placeholderColor: Color {
        self == .homepageLook ? .white : .gray
    }
    
    var hPadding: CGFloat {
        self == .homepageLook ? Dimensions.Padding.padding24 : Dimensions.Padding.padding50
    }
}

struct GACSearchTextField: View {
    @State var searchQuery: String = ""
    let appearence: TextfieldAppearence
    
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
            
            HStack {
                if appearence == .trendingPageLook {
                    Image(for: .backChevron)
                        .renderAsResizable(.fit)
                        .foregroundColor(.white)
                        .frame(width: Dimensions.FrameSize.size15, height: Dimensions.FrameSize.size15)
                        .padding(.leading, Dimensions.Padding.padding32)
                        .onTapGesture {
                            
                        }
                }
                
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
