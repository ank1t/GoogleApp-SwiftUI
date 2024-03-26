//
//  GACCarouselArticleVM.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-03-25
//
        
import Foundation
import SwiftUI

struct GACCarouselArticleVM {
    let title = "National Geographic"
    let images: [Utility.ImageName] = [.polarBear1, .polarBear2]
    let location = "Canada"
    let heading = "Canada is home to about 16,000 polar bears, which is approximately two-thirds of the world's total estimated population"
    let author = "David Attenborough"
    let articlePreview = "\(Constants.bulletPoint) The global population is divided into 19 subpopulations, of which 13 are managed or co-managed by Canada\n\(Constants.bulletPoint) Over 90% of the polar bears in Canada occur in two of Canada's northernmost territories: Nunavut and the Northwest Territories"
}
