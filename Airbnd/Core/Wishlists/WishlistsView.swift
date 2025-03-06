//
//  WishlistsView.swift
//  Airbnd
//
//  Created by Aime-Barca on 3/6/25.
//

import SwiftUI

struct WishlistsView: View {
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 32){
                VStack(alignment: .leading, spacing: 4){
                    Text("Log in to view your wishlists")
                        .font(.headline)
                    
                    Text("You can create, view or edit wishlists once you've logged in")
                        .font(.footnote)
                }
                
                Button {
                    print("Log in")
                } label: {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishlistsView()
}
