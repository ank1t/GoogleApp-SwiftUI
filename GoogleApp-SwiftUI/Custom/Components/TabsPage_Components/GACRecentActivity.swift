//
//  GACRecentActivity.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-09
//
        
import Foundation
import SwiftUI

struct GACRecentAcitivity: View {
    @Binding var searchTerm: String
    
    var body: some View {
        if searchTerm.isEmpty {
            VStack(spacing: Dimensions.Spacing.spacing5) {
                Text("Last opened tabs")
                
            }
        }
    }
}
