//
//  TodoItem.swift
//  ToDoList
//
//  Created by Salma Hassan on 20/03/2024.
//

import Foundation
import FirebaseFirestoreSwift

struct TodoItem: Codable, Identifiable {
    var id: String = UUID().uuidString
    let title: String
    var creationDate: TimeInterval = Date().timeIntervalSince1970
    let dueDate: TimeInterval
    var isDone: Bool
    
    var dueDateForPresentation: String {
        Date(timeIntervalSince1970: dueDate).formatted(date: .abbreviated,
                                                                time: .shortened)
    }
    
    mutating func toggleIsDone() {
        isDone.toggle()
    }
}
