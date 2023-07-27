//
//  Moya+Publisher.swift
//  NewsWorld
//

import Moya
import Combine
import Foundation
import CombineMoya

extension MoyaProvider {
    /// Returns an AnyPublisher with data encoded to a specified model
    func requestPublisher<T: Codable>(_ target: Target) -> AnyPublisher<T, Error> {
        requestPublisher(target)
            .tryMap { result in
                if let response = result.response,
                   !(200 ... 299).contains(response.statusCode)
                {
                    let info = try JSONDecoder().decode(NetworkErrors.self, from: result.data)
                    throw self.httpError(response.statusCode, info)
                }

                print("DATA: \(result.data)")
                return result.data
            }
            .decode(type: T.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }

    private func httpError(
        _ statusCode: Int,
        _ response: NetworkErrors?
    ) -> NetworkRequestError {
        switch statusCode {
        case 400: return .badRequest(response)
        case 401: return .unauthorized(response)
        case 403: return .forbidden(response)
        case 404: return .notFound(response)
        case 402, 405 ... 499: return .error4xx(statusCode)
        case 500: return .serverError(response)
        case 501 ... 599: return .error5xx(statusCode)
        default: return .unknownError(response)
        }
    }
}

