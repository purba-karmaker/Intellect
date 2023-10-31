//
//  User.swift
//  Intellect
//
//  Created by Prajna Karmaker on 8/25/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval 
}
