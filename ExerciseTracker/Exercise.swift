//
//  Exercise.swift
//  ExerciseTracker
//
//  Created by Jai Chawla on 10/4/21.
//

import Foundation

struct Exercise: Identifiable {
    var id = UUID()
    var name: String
    var reps: Int
    var weight: Int
}

class MyExercises: Identifiable, ObservableObject {
    var id = UUID()
    @Published var exercises: [Exercise] = []
    
    func addExercise(exercise: Exercise) {
        exercises.insert(exercise, at: 0)
    }
}



