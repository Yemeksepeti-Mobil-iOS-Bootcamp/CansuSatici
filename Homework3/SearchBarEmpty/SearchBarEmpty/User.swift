//
//  User.swift
//  SearchBarEmpty
//
//  Created by Cansu Satici on 7/11/21.
//

import Foundation

struct User: Decodable {
    
    let id: Int
    let name: String
    let email: String
    let company: Company
}

struct Company: Decodable {
    
    let name: String
}
