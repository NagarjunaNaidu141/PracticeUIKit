//
//  ClosureExample.swift
//  Closures
//
//  Created by Nagarjuna Naidu on 04/04/25.
//

import UIKit

// Define the Student struct
struct Student {
    var name: String
    var testScore: Int
}

// Function containing the executable code
func executeStudentFilter() {
    // Creating an array of Student objects
    let students = [
        Student(name: "Nagarjuna", testScore: 50),
        Student(name: "Prathap", testScore: 90),
        Student(name: "Madhuri", testScore: 80),
        Student(name: "Venkat", testScore: 76),
        Student(name: "Prapul", testScore: 90),
        Student(name: "Gangadhar", testScore: 60),
        Student(name: "Ash", testScore: 70),
        Student(name: "Lalith", testScore: 80),
        Student(name: "Rakesh", testScore: 60)
    ]

    // Closure to filter students with test scores greater than 80
    let topScoreFiltered: (Student) -> Bool = { student in
        return student.testScore > 70
    }
        //creting func that work same as closure
    func topScoreFilteredF(student: Student) -> Bool {
            return student.testScore > 60
    }

    // Filtering the students array using the closure
    let studentScore = students.filter(topScoreFilteredF)
    //calling closure
    //let studentScore = students.filter(topScoreFiltered)
    //shorthand syntax for student $0 $1 closures
    let studentScore1 = students.filter{ $0.testScore > 60 }
    let studentRanking = studentScore1.sorted { $0.testScore > $1.testScore }
    

    // Iterating over the filtered students and printing their names and scores
    for topStudent in studentScore {
        print("\(topStudent.name) : \(topStudent.testScore)")
    }
}
//calling this method from main view controller


