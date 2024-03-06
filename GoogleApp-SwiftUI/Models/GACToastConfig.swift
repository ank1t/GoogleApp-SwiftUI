//
//  GACToastConfig.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-05
//
        
import Foundation
import SwiftUI

enum ToastStyle {
    
}

struct ToastConfig: View {
    var style: ToastStyle
    var message: String
    var duration: Double = 0.3
}
