//
//  RecipeStepsView.swift
//  DeliciousNotes
//
//  Created by Sergey Patrakov on 26.08.2024.
//

import SwiftUI

struct RecipeStepsView: View {
    var steps: [String]
    @State private var currentStepIndex = 0
    
    var body: some View {
        VStack {
            if steps.isEmpty {
                Text("Нет шагов для отображения.")
                    .font(.title)
                    .padding()
            } else {
                StepView(
                    step: steps[currentStepIndex],
                    onNext: {
                        if currentStepIndex < steps.indices.last! {
                            currentStepIndex += 1
                        }
                    }, onPrevious: {
                        if currentStepIndex > steps.indices.first! {
                            currentStepIndex -= 1
                        }
                    }
                )
            }
        }
        .navigationTitle("Шаги рецепта")
        .navigationBarTitleDisplayMode(.inline)
    }
}
