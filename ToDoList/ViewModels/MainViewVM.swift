//
//  MainViewVM.swift
//  ToDoList
//
//  Created by Salma Hassan on 17/03/2024.
//

import Foundation
import FirebaseAuth

class MainViewVM: ObservableObject {
    private var loginListener: AuthStateDidChangeListenerHandle?
    @Published var userId: String = ""
    
    init() {
//        try! Auth.auth().signOut()
        loginListener = Auth.auth().addStateDidChangeListener({ [weak self] _, user in
            self?.userId = user?.uid ?? ""
        })
    }
    
    var isLoggedIn: Bool {
        Auth.auth().currentUser != nil
    }
}
