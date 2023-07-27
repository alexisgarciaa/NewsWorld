//
//  NewsRepository.swift
//  NewsWorld
//

import Foundation

protocol NewsRepository {
    func getAllNews(params: NewsRequest) async -> Result<NewsResponses, Error>
}
