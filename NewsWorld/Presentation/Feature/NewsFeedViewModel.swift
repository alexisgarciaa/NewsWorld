//
//  NewsFeedViewModel.swift
//  NewsWorld
//

import SwiftUI
import Combine

//@State private var headerSection: [String] = ["all","Trending", "Sport", "Health", "Technology", "Desing"]
//
//@State private var indexSelection: Int = 0
//
//@Published var cateogorySearch: CategorySearch = .all

//@State private var headerSection: [String] = ["general","business", "entertainment", "health", "science", "sports", "technology"]

enum CategorySearch: String {
    case general, business, entertainment, health, science, sports, technology
}

final class NewsFeedViewModel: ObservableObject {
    @Published var newsData: NewsResponses = NewsResponses.placeHolder
    @Published var isLoading: Bool = false
    @Published var cateogorySearch: String = CategorySearch.general.rawValue
    
    private let newsMockup = NewsMockUp.setupMockProvider()
    private let newsUseCases: NewsUseCase
    private var cancelable: Set<AnyCancellable> = []

    init(
        newsUseCases: NewsUseCase
    ) {
        self.newsUseCases = newsUseCases
    }
    
    func addNewCategory(newCategory: String) {
            let newWord = newCategory.trimmingCharacters(in: .whitespacesAndNewlines)
            if !newWord.isEmpty {
                if cateogorySearch.isEmpty {
                    cateogorySearch = newWord
                } else {
                    cateogorySearch += ", \(newWord)"
                }
            }
        }
    
    func removeCategory(category: String) {
        let wordsArray = cateogorySearch.split(separator: ", ").map { String($0) }
        let filteredWords = wordsArray.filter { $0 != category }
        cateogorySearch = filteredWords.joined(separator: ", ")
    }
    
    func loadAllNews() {
        isLoading = true
        newsMockup.request(.getAllNews(params: NewsRequest(sources: "", categories: cateogorySearch, countries: "", languages: "", keywords: "", date: "", sort: "", limit: 10, offset: 10))) { [weak self] result in
            switch result {
            case let .success(response):
                do {
                    self?.newsData = try response.data.decode(to: NewsResponses.self)
                    print(self?.newsData as Any)
                    self?.isLoading = false
                } catch {
                    print("Error decoding data: \(error.localizedDescription)")
                    self?.isLoading = false
                }
            case let .failure(error):
                print("API request error: \(error.localizedDescription)")
                self?.isLoading = false
            }
        }
    }
    
    func getAllNews() {
        isLoading = true
        Task {
            await newsUseCases.getAllNews(params: NewsRequest(sources: "cnn", categories: cateogorySearch, countries: "us,sv", languages: "en", keywords: "", date: "", sort: "published_desc", limit: 10, offset: 1))
                .publisher
                .receive(on: DispatchQueue.main)
                .sink(receiveCompletion: { error in
                    switch error {
                    case .failure:
                        break
                    case .finished:
                        break
                    }
                    self.isLoading = false
                }, receiveValue: { [weak self] response in
                    self?.isLoading = false
                    self?.newsData = response
                })
                .store(in: &cancelable)
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
