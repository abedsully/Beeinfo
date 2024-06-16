//
//  NotificationCell.swift
//  Beeinfo
//
//  Created by Stefanus Albert Wilson on 6/16/24.
//

import SwiftUI

struct NotificationCell: View {
    let beet: Beet
    
    var body: some View {
        VStack () {
            HStack (alignment: .top, spacing: 10){
                CircularProfileImageView(user: beet.user, size: .xSmall)
                
                Text("Upcoming Tutoring Request from zyponlolz, Please proceed this request")
                    .foregroundStyle(Constant.textColor)
                
                if let beetImage = beet.beetImage {
                    Image(beetImage)
                        .resizable()
                        .frame(width: 80, height: 80)
                }
            }
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    NotificationCell(beet: Beet.MOCK_BEET[0])
}
