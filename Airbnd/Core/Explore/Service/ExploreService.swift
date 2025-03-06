//
//  ExploreService.swift
//  Airbnb
//
//  Created by Aime-Barca on 3/6/25.
//

import Foundation

class ExploreService{
    func fetchListings() async throws -> [Listing]{
        return DeveloperPreview.shared.listings
    }
}
