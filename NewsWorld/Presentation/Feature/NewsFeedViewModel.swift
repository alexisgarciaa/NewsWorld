//
//  NewsFeedViewModel.swift
//  NewsWorld
//

import SwiftUI
import Combine

final class NewsFeedViewModel: ObservableObject {
    @Published var newsData: NewsResponses?
    
    private let newsMockup = NewsMockUp.setupMockProvider()
    private let newsUseCases: NewsUseCase
    private var cancelable: Set<AnyCancellable> = []

    init(
        newsUseCases: NewsUseCase
    ) {
        self.newsUseCases = newsUseCases
    }
    
    func loadAllNews() {
        newsMockup.request(.getAllNews(params: NewsRequest(sources: "", categories: "", countries: "", languages: "", keywords: "", date: "", sort: "", limit: 10, offset: 10))) { [weak self] result in
            switch result {
            case let .success(response):
                do {
                    self?.newsData = try response.data.decode(to: NewsResponses.self)
                    print(self?.newsData)
//                    self?.isBusy = false
                } catch {
                    print("Error decoding data: \(error.localizedDescription)")
//                    self?.isBusy = false
                }
            case let .failure(error):
                print("API request error: \(error.localizedDescription)")
//                self?.isBusy = false
            }
        }
    }
}


extension NewsFeedViewModel {
    static func make() -> NewsFeedViewModel {
        NewsFeedViewModel(
            newsUseCases: Injector.resolve(NewsUseCase.self)
        )
    }
}
