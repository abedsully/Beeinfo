//
//  SearchView.swift
//  Beeinfo
//
//  Created by Stefanus Albert Wilson on 6/8/24.
//

import SwiftUI

struct SearchView: View {
    let user: User
    
    var body: some View {
        NavigationStack {
            VStack {
                SearchBarView()
                
                UserListView(user: user)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Search")
    }
    
}

#Preview {
    SearchView(user: User.MOCK_USER[0])
}
