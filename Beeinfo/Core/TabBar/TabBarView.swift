//
//  TabBarView.swift
//  Beeinfo
//
//  Created by Stefanus Albert Wilson on 6/7/24.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Home View")
                .tabItem {
                    Label("Home", systemImage: selectedTab == 0 ? "house.fill" : "house")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                }
                .onAppear {selectedTab = 0}
                .tag(0)
            
            Text("Search View")
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
                .onAppear {selectedTab = 1}
                .tag(1)
            
            Text("Add Beets View")
                .tabItem {
                    Label("Add Beets", systemImage: selectedTab == 2 ? "plus.square.fill" : "plus.square")
                        .environment(\.symbolVariants, selectedTab == 2 ? .fill : .none)
                }
                .onAppear {selectedTab = 2}
                .tag(2)
            
            Text("Notifications View")
                .tabItem {
                    Label("Notifications", systemImage: selectedTab == 3 ? "bell.fill" : "bell")
                        .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                }
                .onAppear {selectedTab = 3}
                .tag(3)
            
            Text("Profile View")
                .tabItem {
                    Label("Profile", systemImage: selectedTab == 4 ? "person.fill" : "person")
                        .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
                }
                .onAppear {selectedTab = 4}
                .tag(4)
        }
        .tint(Constant.mainColor)
    }
}

#Preview {
    TabBarView()
}
