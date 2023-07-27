//
//  RepositoryAssembly.swift
//  NewsWorld
//

import Moya
import Swinject
import Foundation
import SwinjectAutoregistration

public struct RepositoryAssembly: Assembly {
    public init() {}

    public func assemble(container: Container) {
        container.autoregister(NewsRepository.self, initializer: NewsRepositoryImpl.init)
    }
}
