//
//  User.swift
//  Bookr
//
//  Created by Madison Waters on 7/8/19.
//  Copyright © 2019 Madison Waters. All rights reserved.
//

import Foundation

struct User: Codable {
    
    var username: String
    var id: UUID?
    var username: String
    var password: String
    var books: [Book]
    var reviews: [Review]
}

extension User {
    private enum CodingKeys: String, CodingKey {
        case id
        case username
        case password
    }
    
    init (from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        username = try values.decode(String.self, forKey: .username)
        password = try values.decode(String.self, forKey: .password)
        
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(username, forKey: .username)
        try container.encode(password, forKey: .password)
        try container.encodeIfPresent(id, forKey: .id)
    }
}
