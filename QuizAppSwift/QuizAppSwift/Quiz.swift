//
//  Quiz.swift
//  QuizAppSwift
//
//  Created by Leandro Roberto Medeiros on 18/04/19.
//  Copyright © 2019 Leandro Roberto Medeiros. All rights reserved.
//

import Foundation

class Quiz {
    
    let question: String
    let options : [String]
    let correctAnswer: String
    
    init(question: String, options: [String], correctAnswer: String) {
        self.question = question
        self.options = options
        self.correctAnswer = correctAnswer
    }
    
    func validateOption(_ index: Int) -> Bool {
        
        let answer = options[index]
        return answer == correctAnswer
        
    }
    
    deinit {
        print("LIberou Quiz da Memória")
    }
    
}
