//
//  NewsResponse.swift
//  NewsWorld
//

import Foundation

struct NewsResponses: Codable {
    let pagination: Pagination?
    let data: [Datum?]
}

// MARK: - Datum
struct Datum: Codable {
    let author: String?
    let title, description: String?
    let url: String?
    let source: String?
    let image: String?
    let category: String?
    let language: String?
    let country: String?
    let publishedAt: String?

    enum CodingKeys: String, CodingKey {
        case author, title, description, url, source, image, category, language, country
        case publishedAt = "published_at"
    }
}

// MARK: - Pagination
struct Pagination: Codable {
    let limit, offset, count, total: Int?
}
