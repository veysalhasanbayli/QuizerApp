//
//  QuestionLocalDataSource.swift
//  data
//
//  Created by Veysal on 07.09.22.
//

import Foundation
import RxRelay
import RxSwift
import Promises
class QuestionLocalDataSource: QuestionLocalDataSourceProtocol {
    private let QuestionRelay = BehaviorRelay<QuestionLocalDTO?>.init(value: nil)
    
    func observe() -> Observable<QuestionLocalDTO> {
        return QuestionRelay
            .filter({ m in
                m != nil
            })
            .map({ m in
                m!
            })
            .asObservable()
    }
    
    func save(questionDTO: QuestionLocalDTO) -> Promise<Void> {
        let promise = Promise<Void>.pending()
        self.QuestionRelay.accept(questionDTO)
        promise.fulfill(Void())
        return promise
    }
}
