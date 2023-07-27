//
//  NewsMockUp.swift
//  NewsWorld
//

import Moya
import Foundation

enum NewsMockUp {
    static func setupMockProvider() -> MoyaProvider<NewsApi> {
        let stubClosure = { (_: NewsApi) -> Moya.StubBehavior in
            .delayed(seconds: 2) // Return .immediate to enable immediate stubbing
        }

        let provider = MoyaProvider<NewsApi>(stubClosure: stubClosure)

        return provider
    }
}

