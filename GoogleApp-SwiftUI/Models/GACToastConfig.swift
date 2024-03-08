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
            case .error: return .red
            case .warning: return .yellow
            case .success: return .green
            case .info: return .clear
        }
    }
    
    var icon: String? {
        switch self {
            case .error: return "info.circle.fill"
            case .warning: return "exclamationmark.triangle.fill"
            case .success: return "checkmark.circle.fill"
            /*
             info case would have the favico of the last visited website
             */
            case .info: return nil
        }
    }
}

struct GACToastConfig: Equatable {
    var style: ToastStyle
    var message: String
    var duration: Double = 0.3
    var lastVisitedPageFavIcon: String?
}
