//
//  DataAssembly.swift
//  data
//
//  Created by Veysal on 07.09.22.
//

import Foundation
import Swinject
import domain
import Alamofire
public class DataAssembly:Assembly {
   public init(){
        
    }
   public func assemble(container: Container) {
        container.register(QuestionsRepoProtocol.self) { r in
            QuestionRepo(remoteDataSource: r.resolve(QuestionRemoteDataSourceProtocol.self)!
                      
            )
        }
       container.register(QuestionRemoteDataSourceProtocol.self) { r in
           QuestionRemoteDataSource(networkProvider: r.resolve(Session.self)!)
       }
       container.register(Session.self) { _ in
           return AF
       }
       container.register(QuestionLocalDataSourceProtocol.self) { _ in
           QuestionLocalDataSource()
       }.inObjectScope(.container)
    }
}
