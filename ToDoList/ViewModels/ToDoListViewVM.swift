//
//  ToDoListViewVM.swift
//  ToDoList
//
//  Created by Salma Hassan on 19/03/2024.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

class ToDoListViewVM: ObservableObject {

    func deleteItem(with id: String) {
        guard let userId = Auth.auth().currentUser?.uid else { return }
        Firestore
            .firestore()
            .collection("users")
            .document(userId)
            .collection("todo")
            .document(id)
            .delete()
    }
    
    func logOut() {
        try? Auth.auth().signOut()
    }
}
