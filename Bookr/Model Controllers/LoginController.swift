//
//  LoginController.swift
//  Bookr
//
//  Created by Madison Waters on 7/9/19.
//  Copyright © 2019 Madison Waters. All rights reserved.
//

import Foundation

class LoginController {
    
    enum HTTPMethod: String {
        case get = "GET"
        case put = "PUT"
        case post = "POST"
        case delete = "DELETE"
    }
    
    var books: [Book] = []
    
    var authToken: AuthToken?
    var user: User?
}
