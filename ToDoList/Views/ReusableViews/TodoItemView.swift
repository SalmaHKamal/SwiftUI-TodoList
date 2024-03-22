//
//  TodoItemView.swift
//  ToDoList
//
//  Created by Salma Hassan on 22/03/2024.
//

import SwiftUI

struct TodoItemView: View {
    var vm = TodoItemVM()
    let item: TodoItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.headline)
                    .fontWeight(.bold)
            
                Text(item.dueDateForPresentation)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
            
            Button(action: {
                vm.toggleIsDone(item: item)
            }, label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
            })
        }
    }
}

#Preview {
    TodoItemView(item: TodoItem(title: "First Item", dueDate: Date().timeIntervalSince1970, isDone: false))
}
