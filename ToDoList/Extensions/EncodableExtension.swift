//
//  EncodableExtension.swift
//  ToDoList
//
//  Created by Salma Hassan on 17/03/2024.
//

import Foundation

extension Encodable {
    var toDictionary: [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else { return [:] }
        let dict = try? JSONSerialization.jsonObject(with: data) as? [String: Any]
        return dict ?? [:]
    }
}
