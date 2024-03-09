//
//  NetworkManager.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-31.
//

import Foundation

struct NetworkingManager {
    static let shared = NetworkingManager()
    
    private init() { }
    
    func getLastOpenedConfig() -> GACLastOpenedURLConfig {
        GACLastOpenedURLConfig(iconURL: .cbc,
                               title: "Bald eagle nest found in Toronto for the first time in recorded history",
                               subtitle: "https://www.cbc.ca/news/canada/toronto/bald-eagle-nest-toronto-1.7135876")
    }
}
