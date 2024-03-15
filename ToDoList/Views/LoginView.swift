//
//  LoginView.swift
//  ToDoList
//
//  Created by Salma Hassan on 15/03/2024.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        // Header
        ZStack {
            Rectangle()
                .foregroundColor(.pink)
                .rotationEffect(.degrees(15))
            
            VStack {
                Text("ToDo List")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Make Things Done")
                    .font(.title3)
            }
            .foregroundColor(.white)
            .padding(.top, 24)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
        height: 300)
        .offset(y: -100)
        
        Spacer()
        
        // Form
        Form {
            TextField("Email Address", text: $email)
            SecureField("Password", text: $password)
            
            Button(action: {
                
            }, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.blue)
                    
                    Text("Login")
                        .foregroundStyle(.white)
                }
            })
        }
        
        Spacer()
        
        // Registeration Footer
        VStack {
            Text("New Member?")
            Button("Create a New Account") {
                
            }
        }
        .padding(.bottom, 50)
    }
}

#Preview {
    LoginView()
}
