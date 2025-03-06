//
//  ListingImageCarouselView.swift
//  Airbnd
//
//  Created by Aime-Barca on 3/5/25.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    let listing: Listing
    
    var body: some View {
        TabView{
            ForEach(listing.imageURLs, id:\.self){image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        // Apply page tab view style only on iOS
#if os(iOS)
        .tabViewStyle(PageTabViewStyle())
#else
        .tabViewStyle(DefaultTabViewStyle())
#endif
    }
}

#Preview {
    ListingImageCarouselView(listing: DeveloperPreview.shared.listings[2])
}
