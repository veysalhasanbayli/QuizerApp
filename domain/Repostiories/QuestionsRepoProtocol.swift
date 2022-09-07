//
//  QuestionsRepoProtocol.swift
//  domain
//
//  Created by Veysal on 02.09.22.
//

import Foundation
import RxSwift
import Promises


public protocol QuestionsRepoProtocol {
    
    func makeGetQuestionUseCase() -> Promise<QuestionEntity>
    
}
