//
//  Toast+Modifiers+Extensions.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-06
//
        
import Foundation
import SwiftUI

struct ToastModifier: ViewModifier {
    @Binding var toast: GACToastConfig?
    @State private var workItem: DispatchWorkItem?
    
    func body(content: Content) -> some View {
        content
            .frame(width: .infinity, height: .infinity)
            .overlay(
                ZStack(alignment: .bottom) {
                    mainToastView()
                        .offset(y: -Dimensions.Spacing.spacing40)
                }.animation(.spring(), value: toast)
            )
            .onChange(of: toast) { value in
                showToast()
            }
    }
    
    @ViewBuilder func mainToastView() -> some View {
        if let toast = toast {
            VStack {
                ToastView(
                    style: toast.style,
                    message: toast.message,
                    width: toast.width
                ) {
                    dismissToast()
                }
                Spacer()
            }
        }
    }
    
    private func showToast() {
        guard let toast = toast else { return }
        
        UIImpactFeedbackGenerator(style: .light)
            .impactOccurred()
        
        if toast.duration > 0 {
            workItem?.cancel()
            
            let task = DispatchWorkItem {
                dismissToast()
            }
            
            workItem = task
            DispatchQueue.main.asyncAfter(deadline: .now() + toast.duration, execute: task)
        }
    }
    
    private func dismissToast() {
        withAnimation {
            toast = nil
        }
        
        workItem?.cancel()
        workItem = nil
    }
}
