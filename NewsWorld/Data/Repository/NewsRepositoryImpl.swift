//
//  NewsRepositoryImpl.swift
//  NewsWorld
//

import Moya
import Combine
import Foundation
import CombineMoya

struct NewsRepositoryImpl: NewsRepository {
    private let api: MoyaProvider<NewsApi>

    init(provider: MoyaProvider<NewsApi>) {
        api = provider
    }
    
    func getAllNews(params: NewsRequest) async -> Result<NewsResponses, Error> {
        do {
            let response: NewsResponses = try await api.requestPublisher(.getAllNews(params: params)).async()
            return .success(response)
        } catch {
            return .failure(error)
        }
    }
}

