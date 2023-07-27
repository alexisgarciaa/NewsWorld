//
//  UseCaseAssembly.swift
//  NewsWorld
//

import Moya
import Swinject
import Foundation
import SwinjectAutoregistration

public struct UseCaseAssembly: Assembly {
    public init() {}

    public func assemble(container: Container) {
        container.autoregister(NewsUseCase.self, initializer: NewsUseCase.init)
    }
}
