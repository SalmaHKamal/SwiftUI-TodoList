//
//  User.swift
//  ToDoList
//
//  Created by Salma Hassan on 17/03/2024.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let password: String
    let joinedAt: TimeInterval
}
