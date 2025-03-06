//
//  ExploreViewModel.swift
//  Airbnb
//
//  Created by Aime-Barca on 3/6/25.
//

import Foundation

class ExploreViewModel: ObservableObject{
    @Published var listings = [Listing]()
    private let service: ExploreService
    @Published var searchLocation = ""
    private var listingsCopy = [Listing]()
    
    init(service: ExploreService){
        self.service = service
        
        Task{await fetchListings()}
    }
    
    func fetchListings() async{
        do{
            self.listings = try await service.fetchListings()
        } catch {
            print("DEBUG: Failed to fetch listings with error: \(error.localizedDescription)")
        }
    }
    
    func updateListingForLocation(){
        let filteredListings = listings.filter({
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        })
        
        self.listings = filteredListings.isEmpty ? listingsCopy : filteredListings
    }
    
}
