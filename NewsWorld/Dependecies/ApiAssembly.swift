//
//  ApiAssembly.swift
//  NewsWorld
//

import Moya
import Swinject
import Foundation
import SwinjectAutoregistration

public struct ApiAssembly: Assembly {
    public init() {}

    public func assemble(container: Container) {
        container.register(MoyaProvider<NewsApi>.self) { _ in
            MoyaProvider<NewsApi>()
        }
    }

    func JSONResponseDataFormatter(_ data: Data) -> String {
        do {
            let dataAsJSON = try JSONSerialization.jsonObject(with: data)
            let prettyData = try JSONSerialization.data(withJSONObject: dataAsJSON, options: .prettyPrinted)
            return String(data: prettyData, encoding: .utf8) ?? String(data: data, encoding: .utf8) ?? ""
        } catch {
            return String(data: data, encoding: .utf8) ?? ""
        }
    }
}

