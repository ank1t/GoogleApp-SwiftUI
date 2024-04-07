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
                    
                    Menu {
                        Button(role: nil) { } label: {
                            Label("Don't show badges", systemImage: Utility.ImageName.noBadge.rawValue)
                        }
                        
                        Button(role: nil) { } label: {
                            Label("Send feedback", systemImage: Utility.ImageName.feedback.rawValue)
                        }
                    } label: {
                        Image(for: .more)
                            .renderAsResizable(.fit )
                            .foregroundColor(.gray)
                            .frame(width: Dimensions.FrameSize.size15,
                                   height: Dimensions.FrameSize.size15)
                            .contentShape(Rectangle())
                            .allowsHitTesting(true)
                    }
                    .preferredColorScheme(.dark)
                    
                }
                .padding(.horizontal, Dimensions.Padding.padding15)
                .padding(.top, Dimensions.Padding.padding15)
                
                Spacer()
                
                Text("No recent notifications")
                    .applyTextStyle(.white, .title3)
                    .padding(.bottom, Dimensions.Padding.padding4)
                
                Text("Follow topics as you search to get updates on the things you care about")
                    .applyTextStyle(.white, .callout)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, Dimensions.Padding.padding15)
                
                Spacer()
            }
        }
    }
}
