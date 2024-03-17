//
//  HeaderView.swift
//  ToDoList
//
//  Created by Salma Hassan on 17/03/2024.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let yPosition: CGFloat
    let frame: (width: CGFloat, height: CGFloat)
    let rotationDegree: Double
    let bgColor: Color
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(bgColor)
                .rotationEffect(.degrees(rotationDegree))
            
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                
                Text(subtitle)
                    .font(.title3)
            }
            .foregroundColor(.white)
            .padding(.top, 24)
        }
        .frame(width: frame.width,
               height: frame.height)
        .offset(y: yPosition)
    }
}

#Preview {
    HeaderView(title: "ToDo List",
               subtitle: "Let's make difference",
               yPosition: -150,
               frame: (width: UIScreen.main.bounds.width * 3,
                       height: 200),
               rotationDegree: 15,
               bgColor: .pink)
}
