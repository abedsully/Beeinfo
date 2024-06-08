//
//  UserCell.swift
//  Beeinfo
//
//  Created by Stefanus Albert Wilson on 6/8/24.
//

import SwiftUI

struct UserCell: View {
    let user: User
    
    var body: some View {
        VStack (alignment: .trailing) {
            HStack {
                CircularProfileImageView(user: user, size: .small)
                
                Text(user.username)
                    .font(.callout)
                    .fontWeight(.medium)
                
                Spacer()
            }
        }
        .padding(8)
        
        
    }
}

#Preview {
    UserCell(user: User.MOCK_USER[0])
}
