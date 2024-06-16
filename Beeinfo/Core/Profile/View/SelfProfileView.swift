//
//  SelfProfileView.swift
//  Beeinfo
//
//  Created by Stefanus Albert Wilson on 6/7/24.
//

import SwiftUI

struct SelfProfileView: View {
    let user: User
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ProfileHeaderView(user: user)
                
                UserContentListView(user: user)
                
                Spacer()
            }
            .navigationTitle("My Profile")
            .navigationBarTitleDisplayMode(.inline)
            .scrollIndicators(.never)
            .padding(.horizontal)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(Constant.textColor)
                    }
                }
            }
        }
    }
    
}

#Preview {
    SelfProfileView(user: User.MOCK_USER[0])
}
