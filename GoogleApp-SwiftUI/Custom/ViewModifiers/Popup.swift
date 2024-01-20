//
//  Popup.swift
//  GoogleAppClone-SwiftUI
//
//  Created by Admin on 2024-01-19.
//

import SwiftUI
import UIKit

struct Popup<T: View>: ViewModifier {
    let isPresented: Bool
    let alignement: Alignment
    let popup: T
    
    init(isPresented: Bool, alignment: Alignment, @ViewBuilder content: () -> T) {
        self.isPresented = isPresented
        self.alignement = alignment
        popup = content()
    }
    
    func body(content: Content) -> some View {
        content.overlay(popupContent())
    }
    
    @ViewBuilder private func popupContent() -> some View {
        GeometryReader { geometry in
            if isPresented {
                popup
                    .animation(.default, value: isPresented)
                    .transition(.offset(x: 0, y: geometry.belowScreenEdge))
                    .frame(width: geometry.size.width, height: geometry.size.height)
            }
            
        }
    }
}

private extension GeometryProxy {
    var belowScreenEdge: CGFloat {
        UIScreen.main.bounds.height - frame(in: .global).minY
    }
}
