//
//  QuestionRemoteDTO.swift
//  data
//
//  Created by Veysal on 07.09.22.
//

import Foundation
import domain

struct QuestionRemoteDTO : Decodable {
    
    let response_code: Int?
    let results: [Result]?
    let totalResponse_code, totalResults: Int?
    
}

struct Result: Decodable {
     let category: String?
     let type: String?
     let difficulty: String?
     let question: String?
     let correct_answer: String?
     let incorrect_answers: String?
    
    enum CodingKeys: String, CodingKey {
        case category = "category"
        case type = "type"
        case difficulty = "difficulty"
        case question = "question"
        case correct_answer = "correct_answer"
        case incorrect_answers = "incorrect_answers"
    }
    
    
}
