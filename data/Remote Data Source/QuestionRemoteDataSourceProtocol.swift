//
//  QuestionRemoteDataSourceProtocol.swift
//  data
//
//  Created by Veysal on 07.09.22.
//

import Foundation
import Promises



protocol QuestionRemoteDataSourceProtocol{
    func fetch() -> Promise<QuestionRemoteDTO>
}
