//
//  TokenAccess.swift
//  LoginTest
//
//  Created by Daniel Diaz on 28/02/23.
//

import Foundation

struct TokenAccess: Decodable {
    var data: Data
    var notification: Notification
}

struct Data: Decodable{
    var access_token: String
    var expires_in: Int
    var refresh_token: String
    var scope: String
    var token_type: String
}

struct Notification: Decodable{
    var code: String
    var description: String
    var responseTime: String
}

