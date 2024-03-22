//
//  TodoItemVM.swift
//  ToDoList
//
//  Created by Salma Hassan on 22/03/2024.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

class TodoItemVM {
    func toggleIsDone(item: TodoItem) {
        var mutableItem = item
        mutableItem.toggleIsDone()
        guard let userId = Auth.auth().currentUser?.uid else { return }
        Firestore
            .firestore()
            .collection("users")
            .document(userId)
            .collection("todo")
            .document(item.id)
            .setData(mutableItem.toDictionary)
    }
}
