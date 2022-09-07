//
//  QuestionLocalDataSourceProtocol.swift
//  data
//
//  Created by Veysal on 07.09.22.
//


import Foundation
import RxSwift
import Promises

    protocol QuestionLocalDataSourceProtocol {
        func observe() -> Observable<QuestionLocalDTO>
        func save(questionDTO: QuestionLocalDTO) -> Promise<Void>
 }
    
