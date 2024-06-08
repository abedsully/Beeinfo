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
        ScrollView {
            VStack (alignment: .leading){
                HStack {
                    Spacer()
                    
                    Text("My Profile")
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundStyle(Constant.textColor)
                    
                    Spacer()
                    
                    Image(systemName: "line.3.horizontal")
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundStyle(Constant.textColor)
                }
                .padding(.vertical)
                
                ProfileHeaderView(user: user)
                
                UserContentListView(user: user)
                
                Spacer()
            }
            .padding(.horizontal)
        }
        .scrollIndicators(.never)
    }
}

#Preview {
    SelfProfileView(user: User.MOCK_USER[0])
}
