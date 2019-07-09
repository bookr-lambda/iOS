//
//  Review.swift
//  Bookr
//
//  Created by Madison Waters on 7/8/19.
//  Copyright © 2019 Madison Waters. All rights reserved.
//

import Foundation

struct Review: Codable {
    
    var reviewer: String
    var review: String
    var stars: Int
}
