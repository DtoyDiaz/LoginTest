//
//  ClientModel.swift
//  LoginTest
//
//  Created by Daniel Diaz on 13/02/23.
//

import Foundation

struct ClientModel: Decodable {
    var documents: [DocumentResponse]
}

struct DocumentResponse: Decodable {
    var fields: FieldsResponse
}

struct FieldsResponse: Decodable {
    var name: NameResponse
}

struct NameResponse: Decodable {
    var stringValue: String
}
