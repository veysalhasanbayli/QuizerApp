//
//  QuestionRemoteDataSource.swift
//  data
//
//  Created by Veysal on 07.09.22.
//

import Foundation
import Alamofire
import Promises
class QuestionRemoteDataSource : QuestionRemoteDataSourceProtocol {
    private let networkProvider:Session
    init(networkProvider:Session){
        self.networkProvider = networkProvider
    }
    func fetch() -> Promise<QuestionRemoteDTO> {
        let promise = Promise<QuestionRemoteDTO>.pending()

        self.networkProvider.request( "https://opentdb.com/api.php?amount=10&type=multiple"
        )
            .responseDecodable(of: QuestionRemoteDTO.self){ response in
                
                
                if let err = response.error{
                    promise.reject(err)
                    return
                }
                if let data = response.value{
                    promise.fulfill(data)
                } else{
                    promise.reject(ParsingError())
                }

            }
        return promise
        
    }
}
class ParsingError:Error {
    
}
