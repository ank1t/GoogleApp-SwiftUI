//
//  Operator+Extensions.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-04-01
//
        
import Foundation
import SwiftUI

func ??<T>(lhs: Binding<Optional<T>>, rhs: T) -> Binding<T> {
    Binding(
        get: { lhs.wrappedValue ?? rhs },
        set: { lhs.wrappedValue = $0 }
    )
}
