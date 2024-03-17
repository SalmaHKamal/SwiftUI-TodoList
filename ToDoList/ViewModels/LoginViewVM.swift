//
//  LoginViewVM.swift
//  ToDoList
//
//  Created by Salma Hassan on 17/03/2024.
//

import Foundation
import FirebaseAuth

class LoginViewVM: ObservableObject {
    var email: String = ""
    var password: String = ""
    @Published var errorMessage: String = ""
    
    func login() {
        guard validate() else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    func validate() -> Bool {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill all fields"
            return false
        }
        
        return true
    }
}
