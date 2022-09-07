//
//  Domain Assembly.swift
//  domain
//
//  Created by Veysal on 02.09.22.
//


import Foundation
import Swinject

public class DomainAssembly: Assembly {
    
    public init() {
        
    }
    
    public func assemble(container: Container) {
        
        container.register(GetQuestionUseCase.self) { r in
            GetQuestionUseCase(repo: r.resolve(QuestionsRepoProtocol.self)!)
        }
        
    }
}
