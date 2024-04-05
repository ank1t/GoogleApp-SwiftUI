//
//  NetworkManager.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-31.
//

import Foundation

struct DataManager {
    static let shared = DataManager()
    
    private init() { }
    
    func getLastOpenedConfig() -> GACIconTitleSubtitleConfig {
        GACIconTitleSubtitleConfig(icon: .cnn,
                               title: "Bald eagle nest found in Toronto for the first time in recorded history",
                               subtitle: "https://www.cbc.ca/news/canada/toronto/bald-eagle-nest-toronto-1.7135876")
    }
    
    func getRecentlySavedArticles() async -> [GACIconTitleSubtitleConfig] {
        [GACIconTitleSubtitleConfig(icon: .eagle,
                               title: "Bald eagle nest found in Toronto for the first time in recorded history",
                               subtitle: "https://www.cbc.ca/news/canada/toronto/bald-eagle-nest-toronto-1.7135876"),
         GACIconTitleSubtitleConfig(icon: .bear,
                                    title: "Bears are carnivoran mammals of the family Ursidae",
                                    subtitle: "https://www.nationalgeographic.com/animals/mammals/facts/bears-grizzly-polar-panda")
        ]
    }
    
    func getRecentCollections() async -> [GACRecentCollectionsVM] {
        [GACRecentCollectionsVM(image: .eagle, title: "Favorite pages",
                                itemCount: "2 items", imageSize: .zero),
         GACRecentCollectionsVM(image: .eagle, title: "Favorite places",
                                itemCount: "19 items", imageSize: .zero),
         GACRecentCollectionsVM(image: .eagle, title: "Favorite images",
                                itemCount: "No items", imageSize: .zero),
         GACRecentCollectionsVM(image: .eagle, title: "Favorite itineraries",
                                itemCount: "No items", imageSize: .zero)
        ]
    }
    
    func getSavedArticles() -> [GACSavedArticlesConfig] {
        [GACSavedArticlesConfig(image: .lion, title: "Lion is generally regarded as the king of the jungle",
                               icon: .cnn, url: "wikipedia.com"),
        GACSavedArticlesConfig(image: .tiger, title: "The tiger is the largest living cat species",
                               icon: .np, url: "wikipedia.com"),
         GACSavedArticlesConfig(image: .cheetah, title: "The cheetah is a large cat and the fastest land animal",
                               icon: .gm, url: "wikipedia.com"),
        GACSavedArticlesConfig(image: .eagle, title: "Eagles are not a natural group but denote essentially any kind of bird of prey large ",
                               icon: .cnn, url: "wikipedia.com"),
        GACSavedArticlesConfig(image: .bear, title: "Bears are carnivoran mammals of the family Ursidae",
                               icon: .cnn, url: "wikipedia.com")]
    }
    
    func getSearchRecommendations() -> [String] {
        ["aerie", "aeroplan", "aerie canada", "aed to cad", "aew", "aer lingus", "aesthetic", "aera restaurant", "aeroplan store", "aeroplan points"]
    }
    
    func getOpenTabs() -> [String] {
        ["https://www.cbc.ca/news/canada/toronto/bald-eagle-nest-toronto-1.7135876"]
    }
}
