//
//  SwiftUIView.swift
//  DeliciousNotes
//
//  Created by Sergey Patrakov on 26.08.2024.
//

import SwiftUI

struct StepView: View {
    var step: String
    var onNext: () -> Void
    var onPrevious: () -> Void
    
    var body: some View {
        VStack {
            Text(step)
                .font(.title)
                .padding()
            
            Spacer()
            
            HStack {
                Button(action: onPrevious) {
                    Text("Назад")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                Spacer()
                
                Button(action: onNext) {
                    Text("Вперед")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
        }
    }
}
