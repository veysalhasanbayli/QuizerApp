//
//  GetQuestionsUseCase.swift
//  domain
//
//  Created by Veysal on 02.09.22.
//

import Foundation
import RxSwift
import Promises

    
    public class GetQuestionUseCase {
        private let repo: QuestionsRepoProtocol
        
        init(repo: QuestionsRepoProtocol){
            self.repo = repo
        }
        public func execute() -> Promise<QuestionEntity>{
            return repo.makeGetQuestionUseCase()
        }
  
}
