//
//  GACProfile.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-20.
//

import SwiftUI

struct GACProfile: View {
    @Binding var profileScreenShown: Bool
    @State private var showProfileRelatedRows: Bool = false
    
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
                                    Image(for: .google_logo)
                                        .renderAsResizable(.fit)
                                        .frame(width: Dimensions.FrameSize.size75)
                                    Spacer()
                                }
                                
                                HStack {
                                    Image(for: .close)
                                        .renderAsResizable(.fit)
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
                            GACProfileRowView(profileRow: GACProfileRow(imageName: .user,
                                                                        title: "Choose an account",
                                                                        divider: .bottom,
                                                                        dividerInset: Dimensions.Padding.padding50,
                                                                        iconSize: Dimensions.FrameSize.size25,
                                                                        disclosureIndicator: Image(for: .chevronUp)),
                            showProfileRelatedRows: $showProfileRelatedRows)
                            if showProfileRelatedRows {
                                GACProfileRowView(profileRow: GACProfileRow(imageName: .userProfile,
                                                                            renderImageAsTemplate: false,
                                                                            title: "Ankit Singh",
                                                                            subtitle: "email@gmail.com",
                                                                            iconSize: Dimensions.FrameSize.size25))
                                GACProfileRowView(profileRow: GACProfileRow(imageName: .addUser,
                                                                            title: "Add another account"))
                                GACProfileRowView(profileRow: GACProfileRow(imageName: .userSettings,
                                                                            title: "Manage accounts on this device",
                                                                            divider: .bottom))
                            }
                            
                            GACProfileRowView(profileRow: GACProfileRow(imageName: .incognito,
                                                                        title: "Turn on incognito"))
                            GACProfileRowView(profileRow: GACProfileRow(imageName: .history,
                                                                        title: "History"))
                            GACProfileRowView(profileRow: GACProfileRow(imageName: .speaker,
                                                                        title: "Read aloud",
                                                                        divider: .bottom,
                                                                        dividerInset: Dimensions.Padding.padding50))
                            GACProfileRowView(profileRow: GACProfileRow(imageName: .settings,
                                                                        title: "Settings"))
                            GACProfileRowView(profileRow: GACProfileRow(imageName: .help,
                                                                        title: "Help & Feedback",
                                                                        divider: .bottom))
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
    }
}
