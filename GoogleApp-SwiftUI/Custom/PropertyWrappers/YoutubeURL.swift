//
//  YoutubeURL.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-02-05.
//

import Foundation

@propertyWrapper struct YoutubeURL {
    private let youtubeURLPrefix: String = "https://www.youtube.com/embed/"
    
    var wrappedValue: String {
        didSet {
            wrappedValue = youtubeURLPrefix + oldValue
        }
    }
    
    init(wrappedValue: String) {
        self.wrappedValue = youtubeURLPrefix + wrappedValue
    }
}
