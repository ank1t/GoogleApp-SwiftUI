//
//  YoutubeURL.swift
//  GoogleApp-SwiftUI
//
//  Created by Admin on 2024-02-05.
//

import Foundation

@propertyWrapper struct YoutubeURL {
    private let youtubeURLPrefix: String = "https://www.youtube.com/embed/"
    
    var wrappedValue: String {
        didSet {
            wrappedValue = youtubeURLPrefix + wrappedValue
        }
    }
    
    init(wrappedValue: String) {
        self.wrappedValue = youtubeURLPrefix + wrappedValue
    }
}
