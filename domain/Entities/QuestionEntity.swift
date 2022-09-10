//
//  QuestionEntity.swift
//  domain
//
//  Created by Veysal on 02.09.22.
//

import Foundation

public enum QuestionModel: InteractiveModelType {
  
  public struct Request {
    public let questionId: Int
    public init(id: Int) {
      self.questionId = id
    }
  }
  
  public struct Response: Codable {
    public let success: Bool
    public let question: QuestionEntity
      
  }
    
}

public struct QuestionEntity : Codable {
    public let question: String
    public let optionOne: String
    public let optionTwo: String
    public let optionThree: String
    public let optionFour: String
    public let correctOption: String
    public let id: Int
}
