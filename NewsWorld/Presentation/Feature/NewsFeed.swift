//
//  NewsFeed.swift
//  NewsWorld
//

import SwiftUI

struct NewsFeed: View {
    @StateObject private var viewModel: NewsFeedViewModel = .make()
    var body: some View {
        VStack {
            Text(String(viewModel.newsData?.data.count ?? 0))
        }
        .onAppear{
            viewModel.loadAllNews()
        }
    }
}

struct NewsFeed_Previews: PreviewProvider {
    static var previews: some View {
        NewsFeed()
    }
}
