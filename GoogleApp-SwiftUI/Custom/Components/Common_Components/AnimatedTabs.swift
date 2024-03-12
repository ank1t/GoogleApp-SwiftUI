//
//  AnimatedTabs.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-10
//
        
import Foundation
import SwiftUI

struct AnimatedTabs: View {
    let tabs: [String]
    
    var body: some View {
        ZStack {
            Color.black
            HStack(spacing: 0) {
                ForEach(tabs, id: \.self) { text in
                    Text(text)
                        .foregroundColor(.white)
                }
            }
        }
        Spacer()
    }
}
