//
//  String+Encoded.swift
//  NewsWorld
//

import Foundation

extension String {
    var dataEncoded: Data {
        data(using: String.Encoding.utf8)!
    }
}
