//
//  TodoListView.swift
//  ToDoList
//
//  Created by Salma Hassan on 17/03/2024.
//

import SwiftUI
import FirebaseFirestoreSwift
import FirebaseAuth

struct TodoListView: View {
    @StateObject var vm = ToDoListViewVM()
    @State var shouldShowNewItemOverlay = false
    @FirestoreQuery var items: [TodoItem]
    
    init() {
        let userId = Auth.auth().currentUser?.uid ?? ""
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todo")
        
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                if items.isEmpty {
                    Text("No Data Found")
                } else {
                    List(items) { item in
                        Text(item.title)
                    }
                }
            }
            .navigationTitle("ToDo List")
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        shouldShowNewItemOverlay = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        
                    } label: {
                        Text("LogOut")
                            .foregroundStyle(.red)
                    }
                }
                
            })
            .sheet(isPresented: $shouldShowNewItemOverlay) {
                AddNewTodoItemView(shouldDismiss: Binding(get: {
                    !shouldShowNewItemOverlay
                }, set: { newValue in
                    shouldShowNewItemOverlay = !newValue
                }))
            }
        }
    }
}

#Preview {
    TodoListView()
}
