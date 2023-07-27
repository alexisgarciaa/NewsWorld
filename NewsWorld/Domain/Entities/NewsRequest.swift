//
//  NewsRequest.swift
//  NewsWorld
//

import Foundation


struct NewsRequest {
    let sources: String
    let categories: String
    let countries: String
    let languages: String
    let keywords: String
    let date: String
    let sort: String
    let limit: Int
    let offset: Int
}
