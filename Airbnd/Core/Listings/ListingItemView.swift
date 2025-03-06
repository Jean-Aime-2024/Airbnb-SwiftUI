//
//  ListingItemView.swift
//  Airbnd
//
//  Created by Aime-Barca on 2/24/25.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            ListingImageCarouselView() .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Miami, Florida").fontWeight(.semibold).foregroundStyle(.black)
                    Text("12 mi away").foregroundColor(.gray)
                    Text("Nov 3 - 10").foregroundColor(.gray)
                    HStack(spacing: 4) {
                        Text("$ 577").fontWeight(.semibold).foregroundStyle(.black)
                        Text("night").foregroundStyle(.black)
                    }
                }
                
                Spacer()
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                }.foregroundStyle(.black)
                
            }.font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
