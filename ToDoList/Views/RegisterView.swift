//
//  RegisterView.swift
//  ToDoList
//
//  Created by Salma Hassan on 17/03/2024.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var vm = RegisterViewVM()
    
    var body: some View {
        // Header
        HeaderView(title: "Register",
                   subtitle: "Start Organizing todos",
                   yPosition: -150,
                   frame: (width: UIScreen.main.bounds.width * 3,
                           height: 330),
                   rotationDegree: -15,
                   bgColor: .orange)
        
        Spacer()
        
        // Form
        Form {
            if !vm.errorMessage.isEmpty {
                Text(vm.errorMessage)
                    .foregroundStyle(.red)
                    .font(.callout)
            }
            TextField("Name", text: $vm.name)
            TextField("Email Address", text: $vm.email)
            SecureField("Password", text: $vm.password)
            
            TLButton(title: "Register",
                     bgColor: .green,
                     textColor: .white,
                     cornerRadius: 10) {
                vm.register()
            }.padding(16)
        }
        .offset(y: -50)
        
        Spacer()
    }
}

#Preview {
    RegisterView()
}
