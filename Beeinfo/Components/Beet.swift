//
//  Beet.swift
//  Beeinfo
//
//  Created by Stefanus Albert Wilson on 6/8/24.
//

import Foundation

struct Beet {
    let id: String
    let ownerUid: String
    let beetCaption: String
    var beetImage: String?
    var beeshCount: Int
    var commentCount: Int
    var beetType: String
    var user: User
    var didBeesh: Bool? = false
}

extension Beet {
    static var MOCK_BEET: [Beet] = [
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, beetCaption: "Disini ada yang mau di kesulitan menang kalau main Valorant? Kalau memang iya, silahkan ajak saya main. Id saya: #zyponlolz. Jangan lupa ajak saya ya kalau kalian mau menang!", beeshCount: 20, commentCount: 5, beetType: "Fess", user: User.MOCK_USER[0], didBeesh: false)
    ]
}
