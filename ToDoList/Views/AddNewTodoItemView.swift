//
//  AddNewTodoItemView.swift
//  ToDoList
//
//  Created by Salma Hassan on 19/03/2024.
//

import SwiftUI

struct AddNewTodoItemView: View {
    @StateObject var vm: AddNewTodoItemViewVM
    
    init(shouldDismiss: Binding<Bool>) {
        self._vm = StateObject(wrappedValue: AddNewTodoItemViewVM(shouldDismiss: shouldDismiss))
    }
    
    var body: some View {
        Form {
            TextField("Title", text: $vm.title)
            DatePicker("Creation Date", selection: $vm.dueDate)
                .datePickerStyle(.graphical)
            TLButton(title: "Save",
                     bgColor: .pink,
                     textColor: .white,
                     cornerRadius: 10) {
                vm.save()
            }.padding(10)
        }
    }
}

#Preview {
    AddNewTodoItemView(shouldDismiss: .constant(false))
}
