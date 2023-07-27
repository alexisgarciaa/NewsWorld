//
//  NewsUseCase.swift
//  NewsWorld
//

import Foundation

struct NewsUseCase {
    let repository: NewsRepository

    func getAllNews(params: NewsRequest) async -> Result<NewsResponses, Error> {
        await repository.getAllNews(params: params)
    }
}
