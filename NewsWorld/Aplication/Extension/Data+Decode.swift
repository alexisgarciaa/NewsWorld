//
//  Data+Decode.swift
//  NewsWorld
//

import Foundation

extension Data {
    func decode<T: Decodable>(to type: T.Type) throws -> T {
        let decoder = JSONDecoder()
        return try decoder.decode(type, from: self)
    }
}
