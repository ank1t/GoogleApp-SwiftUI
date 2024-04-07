//
//  NotificationsPage.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-02-13
//
        
import Foundation
import SwiftUI

struct NotificationsPage: View {
    var body: some View {
        ZStack {
            LightTheme.tabBarBGColor
                .edgesIgnoringSafeArea(.all)
                .preferredColorScheme(.dark)
            
            VStack {
                HStack {
                    Text("Notifications")
                        .applyTextStyle(.white, .headline)
                    Spacer()
                    Image(for: .more)
                        .renderAsResizable(.fit )
                        .frame(width: Dimensions.FrameSize.size15,
                               height: Dimensions.FrameSize.size15)
                }
                .padding(.horizontal, Dimensions.Padding.padding15)
                .padding(.top, Dimensions.Padding.padding15)
                
                Spacer()
                
                Text("No recent notifications")
                    .applyTextStyle(.white, .title2)
                
                Text("Follow topics as you search to get updates on the things you care about")
                    .applyTextStyle(.white, .title3)
                
                Spacer()
            }
        }
    }
}
