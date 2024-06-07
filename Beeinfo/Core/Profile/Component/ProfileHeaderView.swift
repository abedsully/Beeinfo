//
//  ProfileHeaderView.swift
//  Beeinfo
//
//  Created by Stefanus Albert Wilson on 6/7/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User
    
    var body: some View {
        VStack (alignment: .leading){
            HStack (spacing: 16){
                CircularProfileImageView(user: user, size: .large)
                
                VStack (alignment: .leading, spacing: 8){
                    Text(user.username)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(Constant.textColor)
                    
                    Text("31 Posts")
                        .font(.footnote)
                        .foregroundStyle(Constant.textColor)
                }
            }
            .padding(.vertical)
            
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, maxHeight: 32)
                    .background(Constant.mainColor)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USER[0])
}
