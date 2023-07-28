//
//  NewsResponse.swift
//  NewsWorld
//

import Foundation

struct NewsResponses: Codable {
    let pagination: Pagination?
    let data: [Datum?]
    
    static var placeHolder: NewsResponses = NewsResponses(pagination: Pagination(limit: 1, offset: 1, count: 1, total: 1), data: [Datum(author: "", title: "", description: "", url: "", source: "", image: "https://cdn.cnn.com/cnnnext/dam/assets/230318081708-01-elena-rybakina-iga-swiatek-indian-wells-super-169.jpg", category: "", language: "", country: "", publishedAt: "")])
}

// MARK: - Datum
struct Datum: Codable, Hashable {
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
