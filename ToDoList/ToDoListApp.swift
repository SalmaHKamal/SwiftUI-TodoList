//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Salma Hassan on 15/03/2024.
//

import SwiftUI
import FirebaseCore
import FirebaseAppCheck

@main
struct ToDoListApp: App {
    init() {
        let providerFactory = AppCheckDebugProviderFactory()
        AppCheck.setAppCheckProviderFactory(providerFactory)

        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
