//
//  QuestionRepo.swift
//  data
//
//  Created by Veysal on 07.09.22.
//

import Foundation
import domain
import Promises
import RxSwift

class QuestionRepo: QuestionsRepoProtocol {
    
    private let remoteDataSource:  QuestionRemoteDataSourceProtocol
    init (remoteDataSource : QuestionRemoteDataSourceProtocol) {
        self.remoteDataSource = remoteDataSource
    }
    
    func makeGetQuestionUseCase() -> Promise<QuestionEntity> {
        self.remoteDataSource.fetch().then { dto in
            dto.toDomain()
        }
    }
    
    
}
