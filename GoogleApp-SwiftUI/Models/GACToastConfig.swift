//
//  GACToastConfig.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-05
//
        
import Foundation
import SwiftUI

enum ToastStyle {
    case error
    case warning
    case success
    case info
    
    var highlightColor: Color {
        switch self {
            case .error: .red
            case .warning: .yellow
            case .success: .green
            case .info: .clear
        }
    }
    
    var icon: String {
        switch self {
            case .error: "info.circle.fill"
            case .warning: "exclamationmark.triangle.fill"
            case .success: "checkmark.circle.fill"
            case .info: "xmark.circle.fill"
        }
    }
}

struct GACToastConfig: View {
    var style: ToastStyle
    var message: String
    var duration: Double = 0.3
}
