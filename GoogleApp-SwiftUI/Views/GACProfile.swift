//
//  GACProfile.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-20.
//

import SwiftUI

struct GACProfile: View {
    let options: [GACProfileRow] = [
        GACProfileRow(imageName: .user, title: "Choose an account",
                      divider: .bottom, dividerInset: Dimensions.Padding.padding50),
        GACProfileRow(imageName: .addUser, title: "Add another account"),
        GACProfileRow(imageName: .userSettings, title: "Manage accounts on this device"),
        GACProfileRow(imageName: .incognito, title: "Turn on incognito",
                      divider: .top),
        GACProfileRow(imageName: .history, title: "History"),
        GACProfileRow(imageName: .speaker, title: "Read aloud",
                      divider: .bottom, dividerInset: Dimensions.Padding.padding50),
        GACProfileRow(imageName: .help, title: "Help & Feedback",
                      divider: .bottom)
    ]
    @Binding var profileScreenShown: Bool
    
    var body: some View {
        ZStack {
            GeometryReader { proxy in
                VStack {
                    Spacer()
                    HStack {
                        Spacer(minLength: proxy.frame(in: .global).width * 0.05)
                        VStack(alignment: .leading, spacing: Dimensions.Spacing.spacing10) {
                            ZStack {
                                HStack {
                                    Spacer()
                                    Image(for: .google)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: Dimensions.FrameSize.size30)
                                    Spacer()
                                }
                                
                                HStack {
                                    Image(for: .close)
                                        .renderingMode(.template)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: Dimensions.FrameSize.size15)
                                        .foregroundColor(.white)
                                        .padding(.leading, Dimensions.Padding.padding15)
                                        .onTapGesture {
                                            profileScreenShown.toggle()
                                        }
                                    Spacer()
                                }
                            }
                            .padding(.vertical, Dimensions.Padding.padding15)
                            ForEach(options, id: \.self) { option in
                                GACProfileRowView(profileRow: option)
                            }
                            GACTitle1Title2(title1: "Privacy", title2: "Terms of Service")
                        }
                        .background(LightTheme.tabBarBGColor)
                        .cornerRadius(Dimensions.CornerRadius.cornerRadius10)
                    }
                    .frame(width: proxy.frame(in: .global).width * 0.95)
                    Spacer()
                }
            }
        }
        .onTapGesture {
            profileScreenShown.toggle()
        }
    }
}
