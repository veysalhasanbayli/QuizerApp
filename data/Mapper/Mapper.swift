//
//  Mapper.swift
//  data
//
//  Created by Veysal on 07.09.22.
//

import Foundation
import domain

extension Result {
    func toDomain() -> QuestionEntity.ResultEntity {
        return QuestionEntity.ResultEntity(category: self.category ?? "", type: self.type ?? "", difficulty: self.difficulty ?? "", question: self.question ?? "", correct_answer: self.correct_answer ?? "", incorrect_answers: self.incorrect_answers ?? "")
    }
    
    
}

extension QuestionRemoteDTO {
    func toDomain() -> QuestionEntity {
        return QuestionEntity.init(results: self.results.map({$0.map {$0.toDomain()}})!)
    }
}
