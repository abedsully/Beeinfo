//
//  UserListView.swift
//  Beeinfo
//
//  Created by Stefanus Albert Wilson on 6/8/24.
//

import SwiftUI

struct UserListView: View {
    @State private var searchUser = ""
    let user: User
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach( 0...5, id: \.self) { user in
                    UserCell(user: User.MOCK_USER[0])
                }
            }
        }
    }
}

#Preview {
    UserListView(user: User.MOCK_USER[0])
}
