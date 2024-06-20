//
//  User.swift
//  Beeinfo
//
//  Created by Stefanus Albert Wilson on 6/7/24.
//

import Foundation

struct User: BaseModel {
    let id: String
    let email: String
    var username: String
    var profileImageURL: String?
}

extension User {
    static var MOCK_USER: [User] = [
        .init(id: NSUUID().uuidString, email: "test@gmail.com", username: "zyponlolz", profileImageURL: "profile")
    ]
}
