//
//  GACSearchTextField.swift
//  GoogleApp-SwiftUI
//
//  Created by Admin on 2024-01-26.
//

import SwiftUI

struct GACSearchTextField: View {
    @State var searchQuery: String = ""
    
    var body: some View {
        ZStack {
            TextField("", text: $searchQuery, prompt: Text("Search").foregroundColor(Color(.white)))
                .padding(.vertical)
                .padding(.horizontal, Dimensions.Padding.padding24)
                .background(Color(LightTheme.gray400))
                .clipShape(Capsule(style: .continuous))
                .font(.system(size: Dimensions.FontSize.font24))
                .foregroundColor(Color(.white))
                .padding()
            
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
