//
//  BeetsCell.swift
//  Beeinfo
//
//  Created by Stefanus Albert Wilson on 6/8/24.
//

import SwiftUI

struct BeetsCell: View {
    let beet: Beet
    
    var body: some View {
        VStack (alignment: .leading){
            HStack {
                HStack (spacing: 8){
                    CircularProfileImageView(user: beet.user, size: .xSmall)
                    Text(beet.user.username)
                        .font(.footnote)
                        .fontWeight(.medium)
                        .foregroundStyle(Constant.textColor)
                }
                
                Spacer()
                
                Text("3m")
                    .font(.footnote)
                    .foregroundStyle(Color(.systemGray2))
            }
            
            Text(beet.beetCaption)
                .font(.subheadline)
                .padding(.vertical, 8)
            
            HStack (alignment: .center){
                HStack (spacing: 2){
                    Image(systemName: beet.didBeesh ?? false ? "arrowshape.up.fill" : "arrowshape.up")
                    
                    if beet.beeshCount > 0 {
                        Text("\(beet.beeshCount)")
                            .font(.footnote)
                            .foregroundStyle(Color(.systemGray2))
                    }
                }
                
                Image(systemName: "bubble.right")
            }
            
            Divider()
        }
    }
}

#Preview {
    BeetsCell(beet: Beet.MOCK_BEET[0])
}
