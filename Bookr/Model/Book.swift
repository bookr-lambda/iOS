//
//  Book.swift
//  Bookr
//
//  Created by Madison Waters on 7/8/19.
//  Copyright © 2019 Madison Waters. All rights reserved.
//

import Foundation

struct Book: Codable {
    
    var title: String
    var author: String
    var publisher: String
    var reviews: [Review]
}
