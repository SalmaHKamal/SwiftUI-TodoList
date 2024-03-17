//
//  TLButton.swift
//  ToDoList
//
//  Created by Salma Hassan on 17/03/2024.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let bgColor: Color
    let textColor: Color
    let cornerRadius: CGFloat
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            ZStack {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .foregroundColor(bgColor)
                
                Text(title)
                    .foregroundStyle(textColor)
            }
        })
    }
}

#Preview {
    TLButton(title: "Login",
             bgColor: .blue,
             textColor: .white,
             cornerRadius: 10) {
        
    }
}
