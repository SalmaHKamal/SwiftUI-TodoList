//
//  LoginView.swift
//  ToDoList
//
//  Created by Salma Hassan on 15/03/2024.
//

import SwiftUI

struct LoginView: View {
    @StateObject var vm = LoginViewVM()
    
    var body: some View {
        NavigationStack {
            // Header
            HeaderView(title: "ToDo List",
                       subtitle: "Let's Make Difference",
                       yPosition: -100,
                       frame: (width: UIScreen.main.bounds.width * 3,
                               height: 300),
                       rotationDegree: 15,
                       bgColor: .pink)
            
            Spacer()
            
            // Form
            Form {
                if !vm.errorMessage.isEmpty {
                    Text(vm.errorMessage)
                        .foregroundStyle(.red)
                        .font(.callout)
                }
                TextField("Email Address", text: $vm.email)
                SecureField("Password", text: $vm.password)
                
                TLButton(title: "Login",
                         bgColor: .blue,
                         textColor: .white,
                         cornerRadius: 10) {
                    vm.login()
                }.padding(16)
            }
            
            Spacer()
            
            // Registeration Footer
            VStack {
                Text("New Member?")
                NavigationLink {
                    RegisterView()
                } label: {
                    Text("Create New Account")
                }
            }
            .padding(50)
        }
    }
}

#Preview {
    LoginView()
}
