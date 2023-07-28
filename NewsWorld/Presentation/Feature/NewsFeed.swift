//
//  NewsFeed.swift
//  NewsWorld
//

import SwiftUI
import Kingfisher

struct NewsFeed: View {
    @StateObject private var viewModel: NewsFeedViewModel = .make()
    @State private var headerSection: [String] = ["general","business", "entertainment", "health", "science", "sports", "technology"]
    @State private var indexSelection: Set<Int> = [0]
    var body: some View {
        ZStack {
            VStack {
                TopSection()
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 40) {
                        
                        Text("Start Your Blogging\nOdyssey with InspireSphere")
                            .font(.title2)
                            .fontDesign(.monospaced)
                            .fontWeight(.bold)
                        Text(viewModel.cateogorySearch)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(0..<headerSection.count) { section in
                                    VStack {
                                        Text(headerSection[section].capitalized)
                                            .font(.body)
                                            .foregroundColor(indexSelection.contains(section) ? .black : .gray)
                                            .fontDesign(.monospaced)
                                            .onTapGesture {
                                                if indexSelection.contains(section) {
                                                    indexSelection.remove(section)
                                                    viewModel.removeCategory(category: headerSection[section])
                                                    
                                                }else {
                                                    indexSelection.insert(section)
                                                    viewModel.addNewCategory(newCategory: headerSection[section])
                                                }
                                                viewModel.getAllNews()
                                            
                                            }
                                        Rectangle()
                                            .frame(height: 3)
                                            .opacity(indexSelection.contains(section) ? 1 : 0)
                                    }
                                }
                            }
                            .padding(.bottom
                            )
                        }
                    }
                    Spacer()
                    VStack {
                        if viewModel.isLoading {
                            ProgressView()
                                .progressViewStyle(.circular)
                                .frame(alignment: .center)
                        } else {
                            ForEach(viewModel.newsData.data ?? [], id: \.self) { news in
                                NewsCards(news: news)
                            }
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
        .onAppear(perform: viewModel.getAllNews)
    }
    
    func convertToCategorySearch(from value: String) -> CategorySearch {
            if let category = CategorySearch(rawValue: value) {
                return category
            } else {
                return .general
            }
        }
}

struct NewsFeed_Previews: PreviewProvider {
    static var previews: some View {
        NewsFeed()
    }
}

struct NewsCards: View {
    let news: Datum?
    var body: some View {
        VStack (alignment: .leading){
            KFImage(URL(string: news?.image ?? "https://cdn.cnn.com/cnnnext/dam/assets/230318081708-01-elena-rybakina-iga-swiatek-indian-wells-super-169.jpg")!)
                .resizable()
                .frame(height: 250)
            Text(news?.title ?? "")
                .font(.title2)
                .fontDesign(.rounded)
                .bold()
            HStack {
                Text(news?.category ?? "")
                    .font(.body)
                    .foregroundColor(.gray.opacity(0.8))
                
                Text("⚫️")
                
                Text("8 min read")
                    .font(.body)
                    .foregroundColor(.gray.opacity(0.8))
                
            }
        }
    }
}

struct TopSection: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 50, height: 50)
            Spacer()
            Image(systemName: "gear")
                .resizable()
                .renderingMode(.template)
                .frame(width: 30, height: 30)
        }
    }
}
