//
//  CircularProfileImageView.swift
//  Beeinfo
//
//  Created by Stefanus Albert Wilson on 6/7/24.
//

import SwiftUI

enum ProfileImageSize {
    case xSmall
    case small
    case medium
    case large
    
    var dimension: CGFloat {
        switch self {
        case .xSmall:
            return 36
        case .small:
            return 48
        case .medium:
            return 64
        case .large:
            return 88
        }
    }
}

struct CircularProfileImageView: View {
    var user: User?
    let size: ProfileImageSize
    
    var body: some View {
        if let imageURL = user?.profileImageURL {
            Image(imageURL)
                .resizable()
                .scaledToFill()
                .frame(width: size.dimension, height: size.dimension)
                .clipShape(Circle())
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: size.dimension, height: size.dimension)
                .background(Color(.systemGray6))
                .clipShape(Circle())
                .foregroundStyle(Color(.systemGray4))
        }
    }
}

#Preview {
    CircularProfileImageView(user: User.MOCK_USER[0], size: .medium)
}
