//
//  QuestionEntity.swift
//  domain
//
//  Created by Veysal on 02.09.22.
//

import Foundation

public struct QuestionEntity {
    
    public let results: [ResultEntity]?
    public init(
               results:[ResultEntity]){
               self.results = results
    }
    
    enum CodingKeys: String, CodingKey {
        case response_code, results
        case totalResponse_code = "total_response_code"
        case totalResults = "total_results"
    }
    
    public struct ResultEntity {
        public let category: String?
        public let type: String?
        public let difficulty: String?
        public let question: String?
        public let correct_answer: String?
        public let incorrect_answers: String?
        
        public init(category: String?,
                    type: String?,
                    difficulty: String?,
                    question: String?,
                    correct_answer: String?,
                    incorrect_answers: String?
        ){
            self.category = category
            self.type = type
            self.difficulty = difficulty
            self.question = question
            self.correct_answer = correct_answer
            self.incorrect_answers = incorrect_answers
        
        }
        
    }
    
    
    
}
