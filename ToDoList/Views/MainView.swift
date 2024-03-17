//
//  MainView.swift
//  ToDoList
//
//  Created by Salma Hassan on 15/03/2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var vm = MainViewVM()
    
    var body: some View {
        if vm.isLoggedIn && !vm.userId.isEmpty {
            TodoListView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
