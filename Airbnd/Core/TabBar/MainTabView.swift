//
//  MainTabView.swift
//  Airbnd
//
//  Created by Aime-Barca on 3/6/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem{Label("Explore",systemImage: "magnifyingglass")}
            
            WishlistsView()
                .tabItem{Label("Wishlists",systemImage: "heart")}
            
            ProfileView()
                .tabItem{Label("Profile",systemImage: "person")}
        }
    }
}

#Preview {
    MainTabView()
}
