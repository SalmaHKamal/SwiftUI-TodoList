//
//  AddNewTodoItemViewVM.swift
//  ToDoList
//
//  Created by Salma Hassan on 20/03/2024.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth
import SwiftUI

class AddNewTodoItemViewVM: ObservableObject {
    var title: String = ""
    var dueDate: Date = Date()
    @Binding var shouldDismiss: Bool
    
    init(shouldDismiss: Binding<Bool>) {
        self._shouldDismiss = shouldDismiss
    }
    
    func save() {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else { return }
        
        let item = TodoItem(id: UUID().uuidString,
                            title: title,
                            dueDate: dueDate.timeIntervalSince1970,
                            isDone: false)
        
        guard let userId = Auth.auth().currentUser?.uid else { return }
        
        Firestore.firestore()
            .collection("users")
            .document(userId)
            .collection("todo")
            .document(item.id)
            .setData(item.toDictionary)
        
        shouldDismiss = true
    }
    
}
