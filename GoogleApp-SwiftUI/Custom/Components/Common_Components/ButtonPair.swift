//
//  ButtonPair.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-03
//
        
import Foundation
import SwiftUI

struct ButtonPair: View {
    let colorPairs: (Color, Color)
    @Binding var isPresented: Bool
    
    var body: some View {
        HStack(spacing: Dimensions.Spacing.spacing15) {
            Button("Got it", action: {
                isPresented.toggle()
            })
                .padding(.horizontal, Dimensions.Padding.padding45)
                .padding(.vertical, Dimensions.Padding.padding10)
                .background(colorPairs.1)
                .foregroundColor(colorPairs.0)
                .border(colorPairs.0)
                .cornerRadius(Dimensions.CornerRadius.cornerRadius8)
            
            Button("Manage", action: {
                isPresented.toggle()
            })
                .padding(.horizontal, Dimensions.Padding.padding45)
                .padding(.vertical, Dimensions.Padding.padding10)
                .background(colorPairs.0)
                .foregroundColor(colorPairs.1)
                .overlay(
                    RoundedRectangle(cornerRadius: Dimensions.CornerRadius.cornerRadius8)
                        .stroke(colorPairs.1, lineWidth: 1)
                )
        }
    }
}
