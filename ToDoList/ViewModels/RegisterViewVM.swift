//
//  RegisterViewVM.swift
//  ToDoList
//
//  Created by Salma Hassan on 17/03/2024.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class RegisterViewVM: ObservableObject {
    var name: String = ""
    var email: String = ""
    var password: String = ""
    @Published var errorMessage: String = ""
    
    func register() {
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email,
                               password: password) { [weak self] result, error in
            guard let userId = result?.user.uid else { return }
            self?.saveUserInDB(with: userId)
        }
    }
    
    private func saveUserInDB(with id: String) {
        let user = User(id: id,
                        name: name,
                        email: email,
                        password: password,
                        joinedAt: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(id)
            .setData(user.toDictionary)
    }
    
    private func validate() -> Bool {
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill all fields"
            return false
        }
        
        guard email.contains("@"), email.contains(".") else {
            errorMessage = "Invalid Email"
            return false
        }
        
        guard !(password.count < 6) else {
            errorMessage = "Password length should be at least 6 digits"
            return false
        }
        
        return true
    }
}
