//
//  NewsApi.swift
//  NewsWorld
//

import Moya
import Foundation

enum NewsApi {
    case getAllNews(params: NewsRequest)
}

extension NewsApi: TargetType {
    /// TODO: abstract common logic
    var baseURL: URL {
        guard let url = URL(string: K.baseURL) else {
            fatalError("baseURL could not be configurated.")
        }
        return url
    }

    var path: String {
        switch self {
        case .getAllNews:
            return "gh-events/events"
        }
    }

    var method: Moya.Method {
        switch self {
        case .getAllNews:
            return .get
        }
    }

    var task: Task {
        switch self {
        case let .getAllNews(params):
            return .requestParameters(
                parameters: [
                    "sources": params.sources
                ], encoding: URLEncoding()
            )
        }
    }

    var parameterEncoding: ParameterEncoding {
        URLEncoding.default
    }

    var headers: [String: String]? {
        [
            "": ""
        ]
    }
    
    var sampleData: Data {
        var data = Data()
        switch self {
        // TODO: Add data base on the endpoint
        case let .getAllNews(params):
            data = mockData.dataEncoded
        }
        return data
    }
}

 
var mockData = """
{
    "pagination": {
        "limit": 100,
        "offset": 0,
        "count": 100,
        "total": 1663
    },
    "data": [
        {
            "author": null,
            "title": "Elena Rybakina stuns world No.1 Iga Swiatek to reach Indian Wells final",
            "description": "Elena Rybakina defeated world No. 1 Iga Świątek in straight sets on Friday to reach the Indian Wells final and continue her electric run of form this season.",
            "url": "https://www.cnn.com/2023/03/18/tennis/elena-rybakina-iga-swiatek-indian-wells-spt-intl/index.html",
            "source": "CNN Tennis",
            "image": "https://cdn.cnn.com/cnnnext/dam/assets/230318081708-01-elena-rybakina-iga-swiatek-indian-wells-super-169.jpg",
            "category": "sports",
            "language": "en",
            "country": "us",
            "published_at": "2023-04-22T14:40:26+00:00"
        },
        {
            "author": null,
            "title": "Elena Rybakina stuns world No.1 Iga Swiatek to reach Indian Wells final",
            "description": "Elena Rybakina defeated world No. 1 Iga Świątek in straight sets on Friday to reach the Indian Wells final and continue her electric run of form this season.",
            "url": "https://www.cnn.com/2023/03/18/tennis/elena-rybakina-iga-swiatek-indian-wells-spt-intl/index.html",
            "source": "CNN Tennis",
            "image": "https://cdn.cnn.com/cnnnext/dam/assets/230318081708-01-elena-rybakina-iga-swiatek-indian-wells-super-169.jpg",
            "category": "sports",
            "language": "en",
            "country": "us",
            "published_at": "2023-04-22T14:40:26+00:00"
        },

        {
            "author": null,
            "title": "Elena Rybakina stuns world No.1 Iga Swiatek to reach Indian Wells final",
            "description": "Elena Rybakina defeated world No. 1 Iga Świątek in straight sets on Friday to reach the Indian Wells final and continue her electric run of form this season.",
            "url": "https://www.cnn.com/2023/03/18/tennis/elena-rybakina-iga-swiatek-indian-wells-spt-intl/index.html",
            "source": "CNN Tennis",
            "image": "https://cdn.cnn.com/cnnnext/dam/assets/230318081708-01-elena-rybakina-iga-swiatek-indian-wells-super-169.jpg",
            "category": "sports",
            "language": "en",
            "country": "us",
            "published_at": "2023-04-22T14:40:26+00:00"
        },
        {
            "author": null,
            "title": "Elena Rybakina stuns world No.1 Iga Swiatek to reach Indian Wells final",
            "description": "Elena Rybakina defeated world No. 1 Iga Świątek in straight sets on Friday to reach the Indian Wells final and continue her electric run of form this season.",
            "url": "https://www.cnn.com/2023/03/18/tennis/elena-rybakina-iga-swiatek-indian-wells-spt-intl/index.html",
            "source": "CNN Tennis",
            "image": "https://cdn.cnn.com/cnnnext/dam/assets/230318081708-01-elena-rybakina-iga-swiatek-indian-wells-super-169.jpg",
            "category": "sports",
            "language": "en",
            "country": "us",
            "published_at": "2023-04-22T14:40:26+00:00"
        },
 {
     "author": null,
     "title": "Roger Federer's photo with Blackpink goes viral with more than a million likes",
     "description": "Blink and you would have missed it.",
     "url": "https://www.cnn.com/2023/01/29/tennis/roger-federer-black-pink-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230129095203-roger-federer-2022-file-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-16T17:25:25+00:00"
 },
 {
     "author": null,
     "title": "Roger Federer's photo with Blackpink goes viral with more than a million likes",
     "description": "Blink and you would have missed it.",
     "url": "https://www.cnn.com/2023/01/29/tennis/roger-federer-black-pink-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230129095203-roger-federer-2022-file-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-16T17:25:25+00:00"
 },
        {
            "author": null,
            "title": "Elena Rybakina stuns world No.1 Iga Swiatek to reach Indian Wells final",
            "description": "Elena Rybakina defeated world No. 1 Iga Świątek in straight sets on Friday to reach the Indian Wells final and continue her electric run of form this season.",
            "url": "https://www.cnn.com/2023/03/18/tennis/elena-rybakina-iga-swiatek-indian-wells-spt-intl/index.html",
            "source": "CNN Tennis",
            "image": "https://cdn.cnn.com/cnnnext/dam/assets/230318081708-01-elena-rybakina-iga-swiatek-indian-wells-super-169.jpg",
            "category": "sports",
            "language": "en",
            "country": "us",
            "published_at": "2023-04-22T14:40:26+00:00"
        },
        {
            "author": null,
            "title": "Elena Rybakina stuns world No.1 Iga Swiatek to reach Indian Wells final",
            "description": "Elena Rybakina defeated world No. 1 Iga Świątek in straight sets on Friday to reach the Indian Wells final and continue her electric run of form this season.",
            "url": "https://www.cnn.com/2023/03/18/tennis/elena-rybakina-iga-swiatek-indian-wells-spt-intl/index.html",
            "source": "CNN Tennis",
            "image": "https://cdn.cnn.com/cnnnext/dam/assets/230318081708-01-elena-rybakina-iga-swiatek-indian-wells-super-169.jpg",
            "category": "sports",
            "language": "en",
            "country": "us",
            "published_at": "2023-04-22T14:40:26+00:00"
        },

        {
            "author": null,
            "title": "Elena Rybakina stuns world No.1 Iga Swiatek to reach Indian Wells final",
            "description": "Elena Rybakina defeated world No. 1 Iga Świątek in straight sets on Friday to reach the Indian Wells final and continue her electric run of form this season.",
            "url": "https://www.cnn.com/2023/03/18/tennis/elena-rybakina-iga-swiatek-indian-wells-spt-intl/index.html",
            "source": "CNN Tennis",
            "image": "https://cdn.cnn.com/cnnnext/dam/assets/230318081708-01-elena-rybakina-iga-swiatek-indian-wells-super-169.jpg",
            "category": "sports",
            "language": "en",
            "country": "us",
            "published_at": "2023-04-22T14:40:26+00:00"
        },
        {
            "author": null,
            "title": "Elena Rybakina stuns world No.1 Iga Swiatek to reach Indian Wells final",
            "description": "Elena Rybakina defeated world No. 1 Iga Świątek in straight sets on Friday to reach the Indian Wells final and continue her electric run of form this season.",
            "url": "https://www.cnn.com/2023/03/18/tennis/elena-rybakina-iga-swiatek-indian-wells-spt-intl/index.html",
            "source": "CNN Tennis",
            "image": "https://cdn.cnn.com/cnnnext/dam/assets/230318081708-01-elena-rybakina-iga-swiatek-indian-wells-super-169.jpg",
            "category": "sports",
            "language": "en",
            "country": "us",
            "published_at": "2023-04-22T14:40:26+00:00"
        },
 {
     "author": null,
     "title": "Roger Federer's photo with Blackpink goes viral with more than a million likes",
     "description": "Blink and you would have missed it.",
     "url": "https://www.cnn.com/2023/01/29/tennis/roger-federer-black-pink-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230129095203-roger-federer-2022-file-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-16T17:25:25+00:00"
 },
 {
     "author": null,
     "title": "Roger Federer's photo with Blackpink goes viral with more than a million likes",
     "description": "Blink and you would have missed it.",
     "url": "https://www.cnn.com/2023/01/29/tennis/roger-federer-black-pink-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230129095203-roger-federer-2022-file-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-16T17:25:25+00:00"
 },
        {
            "author": null,
            "title": "Elena Rybakina stuns world No.1 Iga Swiatek to reach Indian Wells final",
            "description": "Elena Rybakina defeated world No. 1 Iga Świątek in straight sets on Friday to reach the Indian Wells final and continue her electric run of form this season.",
            "url": "https://www.cnn.com/2023/03/18/tennis/elena-rybakina-iga-swiatek-indian-wells-spt-intl/index.html",
            "source": "CNN Tennis",
            "image": "https://cdn.cnn.com/cnnnext/dam/assets/230318081708-01-elena-rybakina-iga-swiatek-indian-wells-super-169.jpg",
            "category": "sports",
            "language": "en",
            "country": "us",
            "published_at": "2023-04-22T14:40:26+00:00"
        },
        {
            "author": null,
            "title": "Elena Rybakina stuns world No.1 Iga Swiatek to reach Indian Wells final",
            "description": "Elena Rybakina defeated world No. 1 Iga Świątek in straight sets on Friday to reach the Indian Wells final and continue her electric run of form this season.",
            "url": "https://www.cnn.com/2023/03/18/tennis/elena-rybakina-iga-swiatek-indian-wells-spt-intl/index.html",
            "source": "CNN Tennis",
            "image": "https://cdn.cnn.com/cnnnext/dam/assets/230318081708-01-elena-rybakina-iga-swiatek-indian-wells-super-169.jpg",
            "category": "sports",
            "language": "en",
            "country": "us",
            "published_at": "2023-04-22T14:40:26+00:00"
        },

        {
            "author": null,
            "title": "Elena Rybakina stuns world No.1 Iga Swiatek to reach Indian Wells final",
            "description": "Elena Rybakina defeated world No. 1 Iga Świątek in straight sets on Friday to reach the Indian Wells final and continue her electric run of form this season.",
            "url": "https://www.cnn.com/2023/03/18/tennis/elena-rybakina-iga-swiatek-indian-wells-spt-intl/index.html",
            "source": "CNN Tennis",
            "image": "https://cdn.cnn.com/cnnnext/dam/assets/230318081708-01-elena-rybakina-iga-swiatek-indian-wells-super-169.jpg",
            "category": "sports",
            "language": "en",
            "country": "us",
            "published_at": "2023-04-22T14:40:26+00:00"
        },
        {
            "author": null,
            "title": "Elena Rybakina stuns world No.1 Iga Swiatek to reach Indian Wells final",
            "description": "Elena Rybakina defeated world No. 1 Iga Świątek in straight sets on Friday to reach the Indian Wells final and continue her electric run of form this season.",
            "url": "https://www.cnn.com/2023/03/18/tennis/elena-rybakina-iga-swiatek-indian-wells-spt-intl/index.html",
            "source": "CNN Tennis",
            "image": "https://cdn.cnn.com/cnnnext/dam/assets/230318081708-01-elena-rybakina-iga-swiatek-indian-wells-super-169.jpg",
            "category": "sports",
            "language": "en",
            "country": "us",
            "published_at": "2023-04-22T14:40:26+00:00"
        },
 {
     "author": null,
     "title": "Roger Federer's photo with Blackpink goes viral with more than a million likes",
     "description": "Blink and you would have missed it.",
     "url": "https://www.cnn.com/2023/01/29/tennis/roger-federer-black-pink-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230129095203-roger-federer-2022-file-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-16T17:25:25+00:00"
 },
 {
     "author": null,
     "title": "Roger Federer's photo with Blackpink goes viral with more than a million likes",
     "description": "Blink and you would have missed it.",
     "url": "https://www.cnn.com/2023/01/29/tennis/roger-federer-black-pink-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230129095203-roger-federer-2022-file-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-16T17:25:25+00:00"
 },
        {
            "author": null,
            "title": "Elena Rybakina stuns world No.1 Iga Swiatek to reach Indian Wells final",
            "description": "Elena Rybakina defeated world No. 1 Iga Świątek in straight sets on Friday to reach the Indian Wells final and continue her electric run of form this season.",
            "url": "https://www.cnn.com/2023/03/18/tennis/elena-rybakina-iga-swiatek-indian-wells-spt-intl/index.html",
            "source": "CNN Tennis",
            "image": "https://cdn.cnn.com/cnnnext/dam/assets/230318081708-01-elena-rybakina-iga-swiatek-indian-wells-super-169.jpg",
            "category": "sports",
            "language": "en",
            "country": "us",
            "published_at": "2023-04-22T14:40:26+00:00"
        },
        {
            "author": null,
            "title": "Elena Rybakina stuns world No.1 Iga Swiatek to reach Indian Wells final",
            "description": "Elena Rybakina defeated world No. 1 Iga Świątek in straight sets on Friday to reach the Indian Wells final and continue her electric run of form this season.",
            "url": "https://www.cnn.com/2023/03/18/tennis/elena-rybakina-iga-swiatek-indian-wells-spt-intl/index.html",
            "source": "CNN Tennis",
            "image": "https://cdn.cnn.com/cnnnext/dam/assets/230318081708-01-elena-rybakina-iga-swiatek-indian-wells-super-169.jpg",
            "category": "sports",
            "language": "en",
            "country": "us",
            "published_at": "2023-04-22T14:40:26+00:00"
        },

        {
            "author": null,
            "title": "Elena Rybakina stuns world No.1 Iga Swiatek to reach Indian Wells final",
            "description": "Elena Rybakina defeated world No. 1 Iga Świątek in straight sets on Friday to reach the Indian Wells final and continue her electric run of form this season.",
            "url": "https://www.cnn.com/2023/03/18/tennis/elena-rybakina-iga-swiatek-indian-wells-spt-intl/index.html",
            "source": "CNN Tennis",
            "image": "https://cdn.cnn.com/cnnnext/dam/assets/230318081708-01-elena-rybakina-iga-swiatek-indian-wells-super-169.jpg",
            "category": "sports",
            "language": "en",
            "country": "us",
            "published_at": "2023-04-22T14:40:26+00:00"
        },
        {
            "author": null,
            "title": "Elena Rybakina stuns world No.1 Iga Swiatek to reach Indian Wells final",
            "description": "Elena Rybakina defeated world No. 1 Iga Świątek in straight sets on Friday to reach the Indian Wells final and continue her electric run of form this season.",
            "url": "https://www.cnn.com/2023/03/18/tennis/elena-rybakina-iga-swiatek-indian-wells-spt-intl/index.html",
            "source": "CNN Tennis",
            "image": "https://cdn.cnn.com/cnnnext/dam/assets/230318081708-01-elena-rybakina-iga-swiatek-indian-wells-super-169.jpg",
            "category": "sports",
            "language": "en",
            "country": "us",
            "published_at": "2023-04-22T14:40:26+00:00"
        },
 {
     "author": null,
     "title": "Roger Federer's photo with Blackpink goes viral with more than a million likes",
     "description": "Blink and you would have missed it.",
     "url": "https://www.cnn.com/2023/01/29/tennis/roger-federer-black-pink-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230129095203-roger-federer-2022-file-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-16T17:25:25+00:00"
 },
 {
     "author": null,
     "title": "Roger Federer's photo with Blackpink goes viral with more than a million likes",
     "description": "Blink and you would have missed it.",
     "url": "https://www.cnn.com/2023/01/29/tennis/roger-federer-black-pink-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230129095203-roger-federer-2022-file-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-16T17:25:25+00:00"
 }
    ]
}
"""




/*
 ,
 {
     "author": null,
     "title": "20 moments that defined Messi's career",
     "description": "20 moments that defined Messi's career",
     "url": "https://www.cnn.com/interactive/2020/08/sport/lionel-messi-career-barcelona-spt-intl/",
     "source": "CNN Football",
     "image": null,
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-20T07:30:04+00:00"
 },
 {
     "author": null,
     "title": "Azerbaijan calls for sanctions over tennis player's pro-Armenia messages at the Australian Open",
     "description": "Azerbaijan's tennis federation has called for Karen Khachanov to be sanctioned after the Russian player expressed support for the Armenian-majority population living in the disputed Nagorno-Karabakh region at the Australian Open.",
     "url": "https://www.cnn.com/2023/01/26/tennis/karen-khachanov-australian-open-armenia-azerbaijan-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230126123654-01-karen-khachanov-australian-open-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-20T15:50:24+00:00"
 },
 {
     "author": null,
     "title": "Roger Federer's photo with Blackpink goes viral with more than a million likes",
     "description": "Blink and you would have missed it.",
     "url": "https://www.cnn.com/2023/01/29/tennis/roger-federer-black-pink-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230129095203-roger-federer-2022-file-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-16T17:25:25+00:00"
 },
 {
     "author": null,
     "title": "Belarusian tennis player Aryna Sabalenka found it tough to face 'hate' in locker room",
     "description": "Belarusian Aryna Sabalenka said she struggled to understand the \"hate\" she encountered in the locker room amid strained relations between some players following Russia's invasion of Ukraine.",
     "url": "https://www.cnn.com/2023/03/22/tennis/aryna-sabalenka-locker-room-hate-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230322045248-01-aryna-sabalenka-032123-restricted-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-19T16:10:26+00:00"
 },
 {
     "author": null,
     "title": "Martina Navratilova says her prognosis is 'excellent' after double cancer diagnosis -- TalkTV interview",
     "description": "Tennis great Martina Navratilova says her \"prognosis is excellent\" having been diagnosed with throat and breast cancer.",
     "url": "https://www.cnn.com/2023/03/21/tennis/martina-navratilova-cancer-prognosis-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230321113415-01-martina-navratilova-file-2022-restricted-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-19T16:10:26+00:00"
 },
 {
     "author": null,
     "title": "With 25 million players worldwide, padel is only tipped to get 'bigger and bigger' by Andy Murray",
     "description": "It's believed to be a sport that started with a siesta.",
     "url": "https://www.cnn.com/2022/12/22/tennis/padel-andy-jamie-murray-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/221222091945-padel-tease-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-19T16:10:26+00:00"
 },
 {
     "author": null,
     "title": "Novak Djokovic reaches Australian Open semifinals with crushing straight sets win over Andrey Rublev",
     "description": "Novak Djokovic continued his scintillating form at the Australian Open, brushing aside world No. 6 Andrey Rublev in straight sets to reach the semifinals.",
     "url": "https://www.cnn.com/2023/01/25/tennis/novak-djokovic-andrey-rublev-australian-open-quarterfinal-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230125100406-djokovic-rublev-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-19T16:10:26+00:00"
 },
 {
     "author": null,
     "title": "Wimbledon to allow Russian and Belarusian players to compete this year",
     "description": "Wimbledon intends to accept entries from Russian and Belarusian tennis players for this year's tournament, organizers announced Friday.",
     "url": "https://www.cnn.com/2023/03/31/tennis/wimbledon-russian-belarusian-players-2023-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/220426144350-wimbledon-tennis-general-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-21T15:10:22+00:00"
 },
 {
     "author": null,
     "title": "Novak Djokovic withdraws from BNP Paribas Open amid visa debacle",
     "description": "World No. 1 Novak Djokovic has withdrawn from this week's BNP Paribas Open at Indian Wells, the tournament announced on Sunday, suggesting that his visa application to enter the United States had been unsuccessful.",
     "url": "https://www.cnn.com/2023/03/06/tennis/novak-djokovic-bnp-paribas-open-visa-tennis-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230306122801-novak-djokovic-file-011423-super-169.jpeg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-17T16:30:22+00:00"
 },
 {
     "author": null,
     "title": "Wu Yibing becomes first Chinese player to win an ATP title",
     "description": "Wu Yibing made history Sunday, beating John Isner in a thrilling three-set final at the Dallas Open to become the first man from China to win an ATP title.",
     "url": "https://www.cnn.com/2023/02/13/tennis/wu-yibing-dallas-open-history-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230213082944-02-wu-dallas-atp-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-17T16:30:22+00:00"
 },
 {
     "author": null,
     "title": "Novak Djokovic says he 'emotionally collapsed' after Australian Open win",
     "description": "For almost two decades, we have become accustomed to Novak Djokovic winning grand slams. But seeing the world No. 1 sobbing on the floor as he celebrated his Australian Open victory with his family and team was a first. He would later say he had \"emotionally collapsed.\"",
     "url": "https://www.cnn.com/2023/01/30/tennis/novak-djokovic-australian-open-win-reaction-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230130092810-02-novak-djokovic-emotional-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-17T16:30:22+00:00"
 },
 {
     "author": null,
     "title": "Boris Becker says best to 'make friends with the strong boys' as he recalls 'very scary' life in prison",
     "description": "Tennis great Boris Becker says he's grateful just to be alive as he reflected on spending time in prison in an interview with CNN's Christiane Amanpour.",
     "url": "https://www.cnn.com/2023/03/29/tennis/boris-becker-alex-gibney-documentary-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/220429120424-boris-becker-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-26T16:15:25+00:00"
 },
 {
     "author": null,
     "title": "Magda Linette: Unseeded player credits calm as her weapon at Australian Open",
     "description": "Fans and pundits alike expected a Polish player would compete in the semifinal of this year's Australian Open -- but possibly not an unseeded one.",
     "url": "https://www.cnn.com/2023/01/25/tennis/magda-linette-profile-australian-open-intl-spt/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230125140538-02-magda-linette-0125-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-27T02:05:33+00:00"
 },
 {
     "author": null,
     "title": "Iga Świątek returns from injury layoff and defeats Zheng Qinwen at Porsche Tennis Grand Prix",
     "description": "World No. 1 Iga Świątek enjoyed a winning return from injury as she defeated China's Zheng Qinwen 6-1 6-4 at the Porsche Tennis Grand Prix in Stuttgart, Germany.",
     "url": "https://www.cnn.com/2023/04/21/tennis/iga-swiatek-zheng-qinwen-tennis-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230421050729-01-iga-swiatek-042023-restricted-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-28T09:50:24+00:00"
 },
 {
     "author": null,
     "title": "Roger Federer's photo with Blackpink goes viral with more than a million likes",
     "description": "Blink and you would have missed it.",
     "url": "https://www.cnn.com/2023/01/29/tennis/roger-federer-black-pink-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230129095203-roger-federer-2022-file-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-30T17:30:32+00:00"
 },
 {
     "author": null,
     "title": "Azerbaijan calls for sanctions over tennis player's pro-Armenia messages at the Australian Open",
     "description": "Azerbaijan's tennis federation has called for Karen Khachanov to be sanctioned after the Russian player expressed support for the Armenian-majority population living in the disputed Nagorno-Karabakh region at the Australian Open.",
     "url": "https://www.cnn.com/2023/01/26/tennis/karen-khachanov-australian-open-armenia-azerbaijan-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230126123654-01-karen-khachanov-australian-open-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-27T15:55:24+00:00"
 },
 {
     "author": null,
     "title": "World's number one tennis player to miss Miami Open due to vaccination status",
     "description": "The world's top men's tennis player Novak Djokovic will miss the Miami Open next week, after being denied entry to the United States because he is unvaccinated against Covid-19, tournament director James Blake announced on Friday.",
     "url": "https://www.cnn.com/2023/03/18/tennis/djokovic-vaccine-miami-open-tennis-spt-intl-hnk/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230308120201-01-novak-djokovic-aus-open-2023-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-29T07:35:25+00:00"
 },
 {
     "author": null,
     "title": "Emma Raducanu beaten in less than an hour by Jelena Ostapenko in Stuttgart",
     "description": "Britain's Emma Raducanu suffered another agonizing defeat, after being knocked out in the first round of the Stuttgart Open on Tuesday.",
     "url": "https://www.cnn.com/2023/04/19/tennis/emma-raducanu-jelena-ostapenko-intl-spt/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230419094634-01-emma-raducanu-jelena-ostapenko-super-169.jpeg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-03T11:05:31+00:00"
 },
 {
     "author": null,
     "title": "Martina Navratilova says her prognosis is 'excellent' after double cancer diagnosis -- TalkTV interview",
     "description": "Tennis great Martina Navratilova says her \"prognosis is excellent\" having been diagnosed with throat and breast cancer.",
     "url": "https://www.cnn.com/2023/03/21/tennis/martina-navratilova-cancer-prognosis-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230321113415-01-martina-navratilova-file-2022-restricted-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-03T16:15:32+00:00"
 },
 {
     "author": null,
     "title": "Iga Świątek returns from injury layoff and defeats Zheng Qinwen at Porsche Tennis Grand Prix",
     "description": "World No. 1 Iga Świątek enjoyed a winning return from injury as she defeated China's Zheng Qinwen 6-1 6-4 at the Porsche Tennis Grand Prix in Stuttgart, Germany.",
     "url": "https://www.cnn.com/2023/04/21/tennis/iga-swiatek-zheng-qinwen-tennis-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230421050729-01-iga-swiatek-042023-restricted-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-05T09:55:22+00:00"
 },
 {
     "author": null,
     "title": "Emma Raducanu shows signs of return to form as Briton marches on at Indian Wells",
     "description": "Winning tennis matches hasn't been Emma Raducanu's only concern lately -- staying injury free has become tricky for the British star.",
     "url": "https://www.cnn.com/2023/03/14/tennis/emma-raducanu-into-last-16-indian-wells-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230314084245-01-emma-raducanu-indian-wells-super-169.jpeg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-02T14:10:23+00:00"
 },
 {
     "author": null,
     "title": "World's number one tennis player to miss Miami Open due to vaccination status",
     "description": "The world's top men's tennis player Novak Djokovic will miss the Miami Open next week, after being denied entry to the United States because he is unvaccinated against Covid-19, tournament director James Blake announced on Friday.",
     "url": "https://www.cnn.com/2023/03/18/tennis/djokovic-vaccine-miami-open-tennis-spt-intl-hnk/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230308120201-01-novak-djokovic-aus-open-2023-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-06T07:35:25+00:00"
 },
 {
     "author": null,
     "title": "Novak Djokovic surpasses Steffi Graf with record 378th week as world No. 1",
     "description": "Novak Djokovic has achieved another milestone in his illustrious tennis career, surpassing Steffi Graf to spend the most weeks at No. 1 in the world.",
     "url": "https://www.cnn.com/2023/02/27/tennis/novak-djokovic-steffi-graf-record-tennis-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230227114557-02-novak-djokovic-record-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-01T16:35:22+00:00"
 },
 {
     "author": null,
     "title": "Ukrainian tennis player Marta Kostyuk snubs Russian opponent after winning WTA tournament",
     "description": "Ukrainian tennis player Marta Kostyuk refused to shake hands with her Russian opponent Varvara Gracheva after claiming victory in the final of the ATX Open in Austin, Texas, on Sunday.",
     "url": "https://www.cnn.com/2023/03/06/tennis/marta-kostyuk-ukraine-russia-wta-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230306070055-marta-kostyuk-file-020823-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-08T16:35:24+00:00"
 },
 {
     "author": null,
     "title": "Novak Djokovic says he 'emotionally collapsed' after Australian Open win",
     "description": "For almost two decades, we have become accustomed to Novak Djokovic winning grand slams. But seeing the world No. 1 sobbing on the floor as he celebrated his Australian Open victory with his family and team was a first. He would later say he had \"emotionally collapsed.\"",
     "url": "https://www.cnn.com/2023/01/30/tennis/novak-djokovic-australian-open-win-reaction-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230130092810-02-novak-djokovic-emotional-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-08T16:35:24+00:00"
 },
 {
     "author": null,
     "title": "With 25 million players worldwide, padel is only tipped to get 'bigger and bigger' by Andy Murray",
     "description": "It's believed to be a sport that started with a siesta.",
     "url": "https://www.cnn.com/2022/12/22/tennis/padel-andy-jamie-murray-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/221222091945-padel-tease-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-10T16:20:25+00:00"
 },
 {
     "author": null,
     "title": "Elena Rybakina to face Aryna Sabalenka in Australian Open final",
     "description": "Elena Rybakina and Aryna Sabalenka will face off in Saturday's Australian Open final after both women came through their respective semifinals in straight sets.",
     "url": "https://www.cnn.com/2023/01/26/tennis/elena-rybakina-victoria-azarenka-aryna-sabalenka-magda-linette-australian-open-semifinal-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230126102723-elena-rybakina-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-11T11:15:22+00:00"
 },
 {
     "author": null,
     "title": "Emma Raducanu takes impressive victory at Indian Wells but still isn't 'pain free'",
     "description": "Emma Raducanu secured back-to-back victories for the first time since September as she advanced to the third round at Indian Wells on Saturday, but the youngster says she still isn't \"pain free\" after a series of injuries and illnesses derailed the start of her season.",
     "url": "https://www.cnn.com/2023/03/12/tennis/emma-raducanu-indian-wells-injuries-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230312053245-01-emma-raducanu-bnp-paribas-open-031123-restricted-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-07T11:55:27+00:00"
 },
 {
     "author": null,
     "title": "World No. 1 Iga Świątek's dominant unbeaten stretch snapped by Barbora Krejčíková in final of Dubai Tennis Championships",
     "description": "After a dominant unbeaten run, Iga Świątek was finally beaten as she was stunned by Barbora Krejčíková in final of Dubai Tennis Championships.",
     "url": "https://www.cnn.com/2023/02/25/tennis/barbora-krejcikova-iga-swiatek-dubai-tennis-championships-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230225120644-01-krejcikova-swiatek-dubai-championships-0225-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-07T11:55:27+00:00"
 },
 {
     "author": null,
     "title": "Tennis player Alexander Bublik smashes three racquets during loss",
     "description": "Breaking one racquet is unfortunate, destroying three might be considered foolish. Frustration got the better of Alexander Bublik as the tennis player sensationally lost his cool during a first-round match in Montpellier, France.",
     "url": "https://www.cnn.com/2023/02/11/tennis/alexander-bublik-smashes-rackets-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230210174048-01-alexander-bublik-smashes-rackets-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-07T11:55:27+00:00"
 },
 {
     "author": null,
     "title": "Emma Raducanu shows signs of return to form as Briton marches on at Indian Wells",
     "description": "Winning tennis matches hasn't been Emma Raducanu's only concern lately -- staying injury free has become tricky for the British star.",
     "url": "https://www.cnn.com/2023/03/14/tennis/emma-raducanu-into-last-16-indian-wells-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230314084245-01-emma-raducanu-indian-wells-super-169.jpeg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-09T14:10:24+00:00"
 },
 {
     "author": null,
     "title": "Azerbaijan calls for sanctions over tennis player's pro-Armenia messages at the Australian Open",
     "description": "Azerbaijan's tennis federation has called for Karen Khachanov to be sanctioned after the Russian player expressed support for the Armenian-majority population living in the disputed Nagorno-Karabakh region at the Australian Open.",
     "url": "https://www.cnn.com/2023/01/26/tennis/karen-khachanov-australian-open-armenia-azerbaijan-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230126123654-01-karen-khachanov-australian-open-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-11T15:55:25+00:00"
 },
 {
     "author": null,
     "title": "Carlos Alcaraz eyes tournament success and world No. 1 spot after returning from injury",
     "description": "Spanish tennis star Carlos Alcaraz has big ambitions -- and one of those is to be able to emulate some of the game's greats such as Novak Djokovic and Rafa Nadal by winning titles immediately after coming back from injury.",
     "url": "https://www.cnn.com/2023/03/17/tennis/carlos-alcaraz-indian-wells-injury-return-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230317112630-02-carlos-alcaraz-indian-wells-super-169.jpeg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-12T15:20:23+00:00"
 },
 {
     "author": null,
     "title": "Novak Djokovic beats Stefanos Tsitsipas to win men's Australian Open",
     "description": "The result was familiar, the ease with which it was achieved somewhat of a surprise. The historic implications of this match certainly did not shackle Novak Djokovic as the Serb beat Stefanos Tsitsipas in straight sets to win a 10th Australian Open title and a record-equaling 22nd grand slam.",
     "url": "https://www.cnn.com/2023/01/29/tennis/novak-djokovic-stefanos-tsitsipas-australian-open-final-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230129071622-07-aus-open-mens-final-2023-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-14T12:45:23+00:00"
 },
 {
     "author": null,
     "title": "Andy Murray wins first title since 2019 with victory over Tommy Paul in Aix-en-Provence",
     "description": "Andy Murray is back in the winner's circle for the first time since 2019 after the Scot beat world No. 17 Tommy Paul 2-6 6-1 6-2 in the final of the ATP Challenger event in Aix-en-Provence.",
     "url": "https://www.cnn.com/2023/05/08/tennis/andy-murray-beats-tommy-paul-aix-en-provence-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230508110754-01-andy-murray-050723-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-15T11:15:25+00:00"
 },
 {
     "author": null,
     "title": "Novak Djokovic's father poses with fan wearing pro-Russia 'Z' symbol",
     "description": "The Australian Open told CNN it has \"briefed and reminded\" players and their entourages about the tournament's \"policy regarding flags and symbols\" on Thursday after video emerged on Wednesday of Novak Djokovic's father, Srdjan, pictured at a demonstration with fans holding Russian flags, voicing his support for Russia.",
     "url": "https://www.cnn.com/2023/01/26/tennis/djokovic-father-z-symbol-russia-intl-spt/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230126114736-djokovic-fan-z-symbol-012623-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-11T13:25:26+00:00"
 },
 {
     "author": null,
     "title": "Carlos Alcaraz wins Argentina Open after three-month injury layoff",
     "description": "Carlos Alcaraz capped off a stunning return from injury as he defeated Cameron Norris 6-3 7-5 to win the Argentina Open on Sunday.",
     "url": "https://www.cnn.com/2023/02/20/tennis/carlos-alcaraz-argentina-open-tennis-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230220104616-01-carlos-alcaraz-021923-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-15T16:35:25+00:00"
 },
 {
     "author": null,
     "title": "Emma Raducanu takes impressive victory at Indian Wells but still isn't 'pain free'",
     "description": "Emma Raducanu secured back-to-back victories for the first time since September as she advanced to the third round at Indian Wells on Saturday, but the youngster says she still isn't \"pain free\" after a series of injuries and illnesses derailed the start of her season.",
     "url": "https://www.cnn.com/2023/03/12/tennis/emma-raducanu-indian-wells-injuries-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230312053245-01-emma-raducanu-bnp-paribas-open-031123-restricted-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-14T12:00:23+00:00"
 },
 {
     "author": null,
     "title": "World No. 1 Iga Świątek's dominant unbeaten stretch snapped by Barbora Krejčíková in final of Dubai Tennis Championships",
     "description": "After a dominant unbeaten run, Iga Świątek was finally beaten as she was stunned by Barbora Krejčíková in final of Dubai Tennis Championships.",
     "url": "https://www.cnn.com/2023/02/25/tennis/barbora-krejcikova-iga-swiatek-dubai-tennis-championships-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230225120644-01-krejcikova-swiatek-dubai-championships-0225-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-14T12:00:23+00:00"
 },
 {
     "author": null,
     "title": "Tennis player Alexander Bublik smashes three racquets during loss",
     "description": "Breaking one racquet is unfortunate, destroying three might be considered foolish. Frustration got the better of Alexander Bublik as the tennis player sensationally lost his cool during a first-round match in Montpellier, France.",
     "url": "https://www.cnn.com/2023/02/11/tennis/alexander-bublik-smashes-rackets-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230210174048-01-alexander-bublik-smashes-rackets-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-14T12:00:23+00:00"
 },
 {
     "author": null,
     "title": "Novak Djokovic faces Stefanos Tsitsipas in Australian Open final with records on the line",
     "description": "It all comes down to this. With history and a spot at the top of the world rankings on the line, Novak Djokovic faces Stefanos Tsitsipas in the Australian Open men's final on Sunday.",
     "url": "https://www.cnn.com/2023/01/28/tennis/novak-djokovic-stefanos-tsitsipas-australian-open-final-preview-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230127140233-01-novak-djokovic-stefanos-tsitsipas-australian-open-final-preview-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-02T00:35:22+00:00"
 },
 {
     "author": null,
     "title": "Coco Gauff in tears as she suffers Australian Open loss",
     "description": "Coco Gauff broke down in tears after her straight sets defeat in the fourth round of the Australian Open on Sunday, while fellow American Jessica Pegula progressed to the quarterfinals.",
     "url": "https://www.cnn.com/2023/01/21/tennis/iga-swiatek-australian-open-eliminated-spt-intl-hnk/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230122033457-01-coco-gauff-presser-aus-open-012223-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-02T05:10:21+00:00"
 },
 {
     "author": null,
     "title": "Roger Federer's photo with Blackpink goes viral with more than a million likes",
     "description": "Blink and you would have missed it.",
     "url": "https://www.cnn.com/2023/01/29/tennis/roger-federer-black-pink-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230129095203-roger-federer-2022-file-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-02T17:15:23+00:00"
 },
 {
     "author": null,
     "title": "Aryna Sabalenka defeats Elena Rybakina to win thrilling Australian Open final",
     "description": "Belarusian-born Aryna Sabalenka defeated Elena Rybakina in three sets to win a thrilling women's Australian Open final Saturday, becoming the first player competing under a neutral flag to secure a grand slam.",
     "url": "https://www.cnn.com/2023/01/28/tennis/rybakina-sabalenka-australian-open-womens-final/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230128063802-02-aryna-sabalenka-aus-open-final-2023-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-01T12:10:21+00:00"
 },
 {
     "author": null,
     "title": "Tennis player Alexander Bublik smashes three racquets during loss",
     "description": "Breaking one racquet is unfortunate, destroying three might be considered foolish. Frustration got the better of Alexander Bublik as the tennis player sensationally lost his cool during a first-round match in Montpellier, France.",
     "url": "https://www.cnn.com/2023/02/11/tennis/alexander-bublik-smashes-rackets-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230210174048-01-alexander-bublik-smashes-rackets-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-01T13:20:21+00:00"
 },
 {
     "author": null,
     "title": "World No. 135 Fábián Marozsán provides 'shock of the season' by upsetting Carlos Alcaraz in straight sets at Rome Masters",
     "description": "World No. 135 Fábián Marozsán provided what the ATP Tour called the \"shock of the season\" by upsetting Carlos Alcaraz in straight sets at the Rome Masters on Monday.",
     "url": "https://www.cnn.com/2023/05/15/tennis/fabian-marozsan-carlos-alcaraz-rome-masters-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230515143925-01-marozsan-alcaraz-upset-rome-super-169.jpeg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-06-26T15:15:22+00:00"
 },
 {
     "author": null,
     "title": "Holger Rune beats Novak Djokovic in rainy Italian Open quarterfinal clash",
     "description": "Novak Djokovic's preparations for the French Open took another blow on Wednesday as the world No. 1 was beaten by Holger Rune in the Italian Open quarterfinals.",
     "url": "https://www.cnn.com/2023/05/17/tennis/holger-rune-beats-novak-djokovic-italian-open-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230517121317-03-rune-djokovic-rome-open-0517-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-06-28T17:30:26+00:00"
 },
 {
     "author": null,
     "title": "'Like a freight train once we got hot': How 'twin energy' fueled tennis' greatest ever double act",
     "description": "When you spend every moment of every day with another person -- eating, sleeping, training, competing -- it's hardly surprising that you should develop a formidable partnership, even less so if you share the same DNA.",
     "url": "https://www.cnn.com/2023/05/29/tennis/bryan-brothers-tennis-french-open-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230524155157-07-bob-mike-bryan-tennis-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-06-26T08:25:28+00:00"
 },
 {
     "author": null,
     "title": "'Sexist' ball girl outfits, silencing the women's finalists and small birthday cakes: Madrid Open causes controversy",
     "description": "One of the most prestigious tennis tournaments outside of the four grand slams, the Madrid Open attracts the biggest names in the sport.",
     "url": "https://www.cnn.com/2023/05/09/tennis/madrid-open-ball-girl-controversy-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230509071132-02-madrid-open-ball-girl-outfits-file-050523-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-06-27T16:40:28+00:00"
 },
 {
     "author": null,
     "title": "Poland's state-owned airline refuses boarding to Russian tennis player",
     "description": "Poland's state-owned airline LOT refused to board Russian tennis player Vitalia Diatchenko in line with restrictions introduced following Russia's invasion of Ukraine, the carrier said in a statement to CNN on Wednesday without naming her.",
     "url": "https://www.cnn.com/2023/04/26/tennis/vitalia-diatchenko-russia-refused-airline-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230426125932-vitalia-diatchenko-file-2019-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-06-28T18:45:29+00:00"
 },
 {
     "author": null,
     "title": "French Open crowd boos as Ukraine's Marta Kostyuk refuses to shake hands with Belarusian Aryna Sabalenka",
     "description": "Ukrainian tennis player Marta Kostyuk refused to shake hands with Belarusian opponent Aryna Sabalenka following their opening round match at the French Open, leading to boos from some of the crowd.",
     "url": "https://www.cnn.com/2023/05/28/tennis/french-open-marta-kostyuk-aryna-sabalenka-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230528101238-01-kostyuk-sabalenka-french-open-0528-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-06-25T16:45:23+00:00"
 },
 {
     "author": null,
     "title": "Boris Becker says best to 'make friends with the strong boys' as he recalls 'very scary' life in prison",
     "description": "Tennis great Boris Becker says he's grateful just to be alive as he reflected on spending time in prison in an interview with CNN's Christiane Amanpour.",
     "url": "https://www.cnn.com/2023/03/29/tennis/boris-becker-alex-gibney-documentary-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/220429120424-boris-becker-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-06-28T16:40:23+00:00"
 },
 {
     "author": null,
     "title": "With 25 million players worldwide, padel is only tipped to get 'bigger and bigger' by Andy Murray",
     "description": "It's believed to be a sport that started with a siesta.",
     "url": "https://www.cnn.com/2022/12/22/tennis/padel-andy-jamie-murray-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/221222091945-padel-tease-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-06-28T16:40:23+00:00"
 },
 {
     "author": null,
     "title": "'At times I was really pissed off to be part of that era': Novak Djokovic speaks to CNN about competing with Nadal and Federer",
     "description": "Although all-time tennis great Novak Djokovic says that his rivalry with Rafael Nadal and Roger Federer made him the player he is today, initially the Serbian was \"pissed off\" to be part of the golden era.",
     "url": "https://www.cnn.com/2023/03/21/tennis/novak-djokovic-no-regrets-losing-world-no-1-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230308120201-01-novak-djokovic-aus-open-2023-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-17T16:20:26+00:00"
 },
 {
     "author": null,
     "title": "Emma Raducanu to miss both French Open and Wimbledon because of surgery on both wrists and ankle",
     "description": "Emma Raducanu says she will be away from the tennis court \"for the next few months\" while she recovers from surgery on both wrists and one of her ankles.",
     "url": "https://www.cnn.com/2023/05/04/tennis/emma-raducanu-wrist-ankle-surgery-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230504101311-02-emma-raducanu-surgery-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-18T11:10:29+00:00"
 },
 {
     "author": null,
     "title": "Ron DeSantis would 'run a boat from the Bahamas' to allow Novak Djokovic into the US to play at Miami Open",
     "description": "Time might have run out for Novak Djokovic to be admitted US entry to play at Indian Wells, but US politicians -- notably Florida Gov. Ron DeSantis -- are lobbying for regulations to change and allow the world No. 1 into the country in time for the Miami Open.",
     "url": "https://www.cnn.com/2023/03/08/tennis/novak-djokovic-ron-desantis-miami-open-intl-spt/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230308120201-01-novak-djokovic-aus-open-2023-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-17T20:20:28+00:00"
 },
 {
     "author": null,
     "title": "20 moments that defined Messi's career",
     "description": "20 moments that defined Messi's career",
     "url": "https://www.cnn.com/interactive/2020/08/sport/lionel-messi-career-barcelona-spt-intl/",
     "source": "CNN Football",
     "image": null,
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-18T07:40:03+00:00"
 },
 {
     "author": null,
     "title": "Emma Raducanu shows signs of return to form as Briton marches on at Indian Wells",
     "description": "Winning tennis matches hasn't been Emma Raducanu's only concern lately -- staying injury free has become tricky for the British star.",
     "url": "https://www.cnn.com/2023/03/14/tennis/emma-raducanu-into-last-16-indian-wells-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230314084245-01-emma-raducanu-indian-wells-super-169.jpeg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-16T14:10:25+00:00"
 },
 {
     "author": null,
     "title": "Letting Roger Federer leave Nike for Uniqlo was an 'atrocity,' says former Nike tennis director",
     "description": "When Roger Federer made the decision to hang up his tennis racket last year at the age of 41, he did so as one of the most influential figures to have played the game.",
     "url": "https://www.cnn.com/2023/02/14/tennis/roger-federer-nike-mike-nakajima-tennis-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230209134043-roger-federer-atp-world-tour-file-111915-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-16T14:10:25+00:00"
 },
 {
     "author": null,
     "title": "World No. 1 Iga Świątek says tennis missed opportunity in not banning Russian, Belarusian players",
     "description": "Tennis missed an opportunity to send a strong message to Moscow by failing to impose a blanket ban on players from Russia and its ally Belarus after the invasion of Ukraine, world number one Iga Świątek said.",
     "url": "https://www.cnn.com/2023/04/06/tennis/iga-swiatek-russia-belarus-tennis-wimbledon-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230406051859-01-iga-swiatek-060422-file-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-18T10:45:28+00:00"
 },
 {
     "author": null,
     "title": "What's wrong with Eugenie Bouchard?",
     "description": "It's the question many in tennis are asking after she lost for the eighth time in her last nine matches: What's wrong with Eugenie Bouchard?",
     "url": "https://www.cnn.com/2015/05/27/tennis/eugenie-bouchard-french-open-tennis/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/150527105612-bouchard-tease-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-18T13:50:30+00:00"
 },
 {
     "author": null,
     "title": "Turkish delight for Roger Federer in Istanbul",
     "description": "Globetrotting Roger Federer claimed the inaugural Istanbul Open Sunday with a straight sets win over Pablo Cuevas of Uruguay.",
     "url": "https://www.cnn.com/2015/05/03/tennis/tennis-federer-istanbul-halep/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/150503130919-federer-istanbul-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-18T13:50:30+00:00"
 },
 {
     "author": null,
     "title": "Rafael Nadal withdraws from French Open due to injury, says 'next year is my last year'",
     "description": "Rafael Nadal will miss the French Open for the first time since he made his debut in 2005 after the 14-time champion announced on Thursday that he has withdrawn from the tournament due to injury, adding that \"next year is my last year\" in professional tennis.",
     "url": "https://www.cnn.com/2023/05/18/tennis/rafael-nadal-withdraws-from-french-open-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230518033911-01-rafael-nadal-presser-prep-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-18T14:50:25+00:00"
 },
 {
     "author": null,
     "title": "Serena Williams sends a message to mothers after Wimbledon loss",
     "description": "Tennis superstar Serena Williams had a message for mothers after her loss at Wimbledon: \"I was playing for you today.\"",
     "url": "https://www.cnn.com/2018/07/15/tennis/serena-williams-wimbledon-mothers/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/160928102450-serena-williams-card-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-19T05:45:23+00:00"
 },
 {
     "author": null,
     "title": "Isner makes Wimbledon quarterfinal, hopes for Trump visit",
     "description": "On 'manic Monday' at Wimbledon, John Isner progressed to his first quarterfinal at the All England Club eight years after his marathon encounter against Nicolas Mahut.",
     "url": "https://www.cnn.com/2018/07/09/tennis/wimbledon-tennis-isner-federer-serena-nadal-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/180709181401-isner-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-19T05:45:23+00:00"
 },
 {
     "author": null,
     "title": "Venus Williams latest top-10 seed to exit Wimbledon",
     "description": "History is being made at Wimbledon, where only two of the top-10 women's seeds remain in the first week after Venus Williams and Madison Keys were defeated Friday on another sunny, steamy day in London.",
     "url": "https://www.cnn.com/2018/07/06/tennis/serena-federer-venus-wimbledon-tennis-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/180706174811-venus-williams-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-19T05:45:23+00:00"
 },
 {
     "author": null,
     "title": "Muguruza, Cilic stunned at Wimbledon",
     "description": "Defending women's champion Garbine Muguruza and last year's men's finalist Marin Cilic lost at Wimbledon as the big upsets continued in the first week.",
     "url": "https://www.cnn.com/2018/07/05/tennis/marin-cilic-wimbledon-pella-nadal-tennis/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/180705210728-muguruza-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-19T05:45:23+00:00"
 },
 {
     "author": null,
     "title": "Roger Federer to visit fans in Wimbledon queue?",
     "description": "Thousands of fans camp out each Wimbledon trying to get a ticket to arguably the most prestigious grand slam in tennis. Roger Federer has taken note and didn't discount visiting the famous queue one day.",
     "url": "https://www.cnn.com/2018/07/05/tennis/roger-federer-wimbledon-tennis-queue-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/180705130428-federer-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-19T05:45:23+00:00"
 },
 {
     "author": null,
     "title": "Andy Murray withdraws from Wimbledon",
     "description": "Two-time champion Andy Murray has withdrawn from Wimbledon one day before the competition begins.",
     "url": "https://www.cnn.com/2018/07/01/tennis/andy-murray-wimbledon-withdraw/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/180701164221-andy-murray-sad-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-19T05:45:23+00:00"
 },
 {
     "author": null,
     "title": "Boris Becker claims diplomatic immunity from bankruptcy case",
     "description": "The tennis great has claimed diplomatic immunity against bankruptcy proceedings in Britain due to his work as a diplomat for the Central African Republic (CAR).",
     "url": "https://www.cnn.com/2018/06/15/tennis/boris-becker-diplomatic-immunity-claim-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/180615084546-boris-becker-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-19T05:45:23+00:00"
 },
 {
     "author": null,
     "title": "Nadal beats Thiem for 11th French Open crown",
     "description": "Rafael Nadal beat Dominic Thiem in straight sets on Sunday to win a record extending 11th French Open title.",
     "url": "https://www.cnn.com/2018/06/10/tennis/french-open-nadal-thiem-tennis-int-spt/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/180610181037-nadal-wins-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-19T05:45:23+00:00"
 },
 {
     "author": null,
     "title": "Yannick Noah: The last Frenchman to win Roland Garros",
     "description": "Yannick Noah turned as the ball sailed over his head and watched it land outside the baseline.",
     "url": "https://www.cnn.com/2018/06/05/tennis/yannick-noah-french-open-roland-garros-rafael-nadal/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/180601034513-yannick-noah-1989-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-19T05:45:23+00:00"
 },
 {
     "author": null,
     "title": "Rafael Nadal breaks John McEnroe's 34-year-old record",
     "description": "There is no disputing that Rafael Nadal is the \"King of Clay\" and the world No.1 further enhanced his status by breaking John McEnroe's 34-year-old record for consecutive set wins on a single surface.",
     "url": "https://www.cnn.com/2018/05/11/tennis/rafael-nadal-set-record-john-mcenroe-tennis-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/180511092714-rafael-nadal-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-19T05:45:23+00:00"
 },
 {
     "author": null,
     "title": "Federer wins Australian Open and 20th major",
     "description": "Roger Federer beat Marin Cilic in five sets to win the Australian Open and become the first man to claim 20 majors.",
     "url": "https://www.cnn.com/2018/01/28/tennis/australian-open-federer-cilic-tennis/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/180128141851-federer-fans-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-19T05:45:23+00:00"
 },
 {
     "author": null,
     "title": "Federer reaches seventh Australian Open final",
     "description": "Roger Federer reached a seventh Australian Open final, and 30th grand slam final overall, when South Korea's history-maker Hyeon Chung retired injured.",
     "url": "https://www.cnn.com/2018/01/26/tennis/australian-open-roger-federer-hyeon-chung-tennis/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/180126112424-federer-interview-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-19T05:45:23+00:00"
 },
 {
     "author": null,
     "title": "Novak Djokovic says he 'emotionally collapsed' after Australian Open win",
     "description": "For almost two decades, we have become accustomed to Novak Djokovic winning grand slams. But seeing the world No. 1 sobbing on the floor as he celebrated his Australian Open victory with his family and team was a first. He would later say he had \"emotionally collapsed.\"",
     "url": "https://www.cnn.com/2023/01/30/tennis/novak-djokovic-australian-open-win-reaction-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230130092810-02-novak-djokovic-emotional-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-03T11:25:19+00:00"
 },
 {
     "author": null,
     "title": "Ben Shelton emerges as US tennis' latest star during dream Australian Open run",
     "description": "Rising stars from the United States feature prominently in the men's side of the draw at the Australian Open, making up three of the eight players ithat reached reached the quarterfinals in Melbourne.",
     "url": "https://www.cnn.com/2023/01/24/tennis/ben-shelton-profile-australian-open-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230123154718-ben-shelton-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-04T10:00:27+00:00"
 },
 {
     "author": null,
     "title": "Elena Rybakina to face Aryna Sabalenka in Australian Open final",
     "description": "Elena Rybakina and Aryna Sabalenka will face off in Saturday's Australian Open final after both women came through their respective semifinals in straight sets.",
     "url": "https://www.cnn.com/2023/01/26/tennis/elena-rybakina-victoria-azarenka-aryna-sabalenka-magda-linette-australian-open-semifinal-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230126102723-elena-rybakina-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-06T11:10:21+00:00"
 },
 {
     "author": null,
     "title": "Jelena Dokic slams trolls over offensive posts about her body",
     "description": "Former Australian tennis star Jelena Dokic has hit back at online trolls she says have bombarded her with negative comments about her body at the Australian Open.",
     "url": "https://www.cnn.com/2023/01/23/tennis/jelena-dokic-australian-open-abuse-intl-hnk-spt/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230123124827-02-jelena-dokic-2023-australian-open-launch-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-03T06:50:25+00:00"
 },
 {
     "author": null,
     "title": "20 moments that defined Messi's career",
     "description": "20 moments that defined Messi's career",
     "url": "https://www.cnn.com/interactive/2020/08/sport/lionel-messi-career-barcelona-spt-intl/",
     "source": "CNN Football",
     "image": null,
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-06T07:20:04+00:00"
 },
 {
     "author": null,
     "title": "'At times I was really pissed off to be part of that era': Novak Djokovic speaks to CNN about competing with Nadal and Federer",
     "description": "Although all-time tennis great Novak Djokovic says that his rivalry with Rafael Nadal and Roger Federer made him the player he is today, initially the Serbian was \"pissed off\" to be part of the golden era.",
     "url": "https://www.cnn.com/2023/03/21/tennis/novak-djokovic-no-regrets-losing-world-no-1-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230308120201-01-novak-djokovic-aus-open-2023-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-05T16:05:22+00:00"
 },
 {
     "author": null,
     "title": "Martina Navratilova says her prognosis is 'excellent' after double cancer diagnosis -- TalkTV interview",
     "description": "Tennis great Martina Navratilova says her \"prognosis is excellent\" having been diagnosed with throat and breast cancer.",
     "url": "https://www.cnn.com/2023/03/21/tennis/martina-navratilova-cancer-prognosis-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230321113415-01-martina-navratilova-file-2022-restricted-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-05T16:05:22+00:00"
 },
 {
     "author": null,
     "title": "Novak Djokovic's father poses with fan wearing pro-Russia 'Z' symbol",
     "description": "The Australian Open told CNN it has \"briefed and reminded\" players and their entourages about the tournament's \"policy regarding flags and symbols\" on Thursday after video emerged on Wednesday of Novak Djokovic's father, Srdjan, pictured at a demonstration with fans holding Russian flags, voicing his support for Russia.",
     "url": "https://www.cnn.com/2023/01/26/tennis/djokovic-father-z-symbol-russia-intl-spt/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230126114736-djokovic-fan-z-symbol-012623-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-06T13:10:23+00:00"
 },
 {
     "author": null,
     "title": "Wimbledon to allow Russian and Belarusian players to compete this year",
     "description": "Wimbledon intends to accept entries from Russian and Belarusian tennis players for this year's tournament, organizers announced Friday.",
     "url": "https://www.cnn.com/2023/03/31/tennis/wimbledon-russian-belarusian-players-2023-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/220426144350-wimbledon-tennis-general-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-07T15:00:26+00:00"
 },
 {
     "author": null,
     "title": "Tennis player Alexander Bublik smashes three racquets during loss",
     "description": "Breaking one racquet is unfortunate, destroying three might be considered foolish. Frustration got the better of Alexander Bublik as the tennis player sensationally lost his cool during a first-round match in Montpellier, France.",
     "url": "https://www.cnn.com/2023/02/11/tennis/alexander-bublik-smashes-rackets-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230210174048-01-alexander-bublik-smashes-rackets-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-08T13:20:23+00:00"
 },
 {
     "author": null,
     "title": "US tennis star Jessica Pegula reduced to 'sitting eating doritos at midnight' after birthday 'bagel'",
     "description": "Some parts of being a professional tennis player aren't glamorous.",
     "url": "https://www.cnn.com/2023/02/25/tennis/jessica-pegula-doritos-tweet-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230225082445-jessica-pegula-dubai-0224-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-08T14:25:21+00:00"
 },
 {
     "author": null,
     "title": "Novak Djokovic faces Stefanos Tsitsipas in Australian Open final with records on the line",
     "description": "It all comes down to this. With history and a spot at the top of the world rankings on the line, Novak Djokovic faces Stefanos Tsitsipas in the Australian Open men's final on Sunday.",
     "url": "https://www.cnn.com/2023/01/28/tennis/novak-djokovic-stefanos-tsitsipas-australian-open-final-preview-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230127140233-01-novak-djokovic-stefanos-tsitsipas-australian-open-final-preview-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-09T00:40:19+00:00"
 },
 {
     "author": null,
     "title": "Coco Gauff in tears as she suffers Australian Open loss",
     "description": "Coco Gauff broke down in tears after her straight sets defeat in the fourth round of the Australian Open on Sunday, while fellow American Jessica Pegula progressed to the quarterfinals.",
     "url": "https://www.cnn.com/2023/01/21/tennis/iga-swiatek-australian-open-eliminated-spt-intl-hnk/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230122033457-01-coco-gauff-presser-aus-open-012223-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-09T05:15:20+00:00"
 },
 {
     "author": null,
     "title": "Roger Federer's photo with Blackpink goes viral with more than a million likes",
     "description": "Blink and you would have missed it.",
     "url": "https://www.cnn.com/2023/01/29/tennis/roger-federer-black-pink-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230129095203-roger-federer-2022-file-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-09T17:20:29+00:00"
 },
 {
     "author": null,
     "title": "Wu Yibing becomes first Chinese player to win an ATP title",
     "description": "Wu Yibing made history Sunday, beating John Isner in a thrilling three-set final at the Dallas Open to become the first man from China to win an ATP title.",
     "url": "https://www.cnn.com/2023/02/13/tennis/wu-yibing-dallas-open-history-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230213082944-02-wu-dallas-atp-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-10T16:25:29+00:00"
 },
 {
     "author": null,
     "title": "Victoria Azarenka shines in Melbourne as she sweeps past Jessica Pegula to reach Australian Open semifinals",
     "description": "Victoria Azarenka produced a brilliant display of tennis to dispatch world No. 3 Jessica Pegula and reach the Australian Open semifinals.",
     "url": "https://www.cnn.com/2023/01/24/tennis/jessica-pegula-victoria-azarenka-australian-open-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230124094355-azarenka-pegula-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-11T10:50:20+00:00"
 },
 {
     "author": null,
     "title": "Novak Djokovic equals Steffi Graf's record for most weeks as world No.1",
     "description": "Novak Djokovic has achieved another milestone in his illustrious tennis career, equaling Steffi Graf's record for the most weeks as world No. 1.",
     "url": "https://www.cnn.com/2023/02/21/tennis/novak-djokovic-steffi-graf-world-rankings-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230221093116-novak-djokovic-011723-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-11T12:00:21+00:00"
 },
 {
     "author": null,
     "title": "Felix Auger-Aliassime's loss means every player featured in Netflix's 'Break Point' no longer in Australian Open",
     "description": "And then there were none. Felix Auger-Aliassime's fourth-round loss at the Australian Open means none of the stars of Netflix's new tennis documentary 'Break Point' have made it through to the second week in Melbourne.",
     "url": "https://www.cnn.com/2023/01/22/tennis/netflix-curse-break-point-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230122053808-01-felix-auger-aliassime-aus-open-012223-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-04-09T12:45:19+00:00"
 },
 {
     "author": null,
     "title": "Iga Świątek returns from injury layoff and defeats Zheng Qinwen at Porsche Tennis Grand Prix",
     "description": "World No. 1 Iga Świątek enjoyed a winning return from injury as she defeated China's Zheng Qinwen 6-1 6-4 at the Porsche Tennis Grand Prix in Stuttgart, Germany.",
     "url": "https://www.cnn.com/2023/04/21/tennis/iga-swiatek-zheng-qinwen-tennis-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230421050729-01-iga-swiatek-042023-restricted-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-19T10:00:25+00:00"
 },
 {
     "author": null,
     "title": "Andy Murray wins first title since 2019 with victory over Tommy Paul in Aix-en-Provence",
     "description": "Andy Murray is back in the winner's circle for the first time since 2019 after the Scot beat world No. 17 Tommy Paul 2-6 6-1 6-2 in the final of the ATP Challenger event in Aix-en-Provence.",
     "url": "https://www.cnn.com/2023/05/08/tennis/andy-murray-beats-tommy-paul-aix-en-provence-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230508110754-01-andy-murray-050723-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-22T11:20:21+00:00"
 },
 {
     "author": null,
     "title": "Wimbledon to allow Russian and Belarusian players to compete this year",
     "description": "Wimbledon intends to accept entries from Russian and Belarusian tennis players for this year's tournament, organizers announced Friday.",
     "url": "https://www.cnn.com/2023/03/31/tennis/wimbledon-russian-belarusian-players-2023-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/220426144350-wimbledon-tennis-general-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-19T15:20:25+00:00"
 },
 {
     "author": null,
     "title": "Carlos Alcaraz eyes tournament success and world No. 1 spot after returning from injury",
     "description": "Spanish tennis star Carlos Alcaraz has big ambitions -- and one of those is to be able to emulate some of the game's greats such as Novak Djokovic and Rafa Nadal by winning titles immediately after coming back from injury.",
     "url": "https://www.cnn.com/2023/03/17/tennis/carlos-alcaraz-indian-wells-injury-return-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230317112630-02-carlos-alcaraz-indian-wells-super-169.jpeg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-19T15:20:25+00:00"
 },
 {
     "author": null,
     "title": "Russia's Daria Kasatkina says it 'makes a lot of sense' for Ukrainian tennis players to receive support",
     "description": "Daria Kasatkina, Russia's top-ranked female tennis player, has praised the decision of the Lawn Tennis Association (LTA) and Wimbledon to support Ukrainian tennis players during the grass-court tennis season.",
     "url": "https://www.cnn.com/2023/05/01/tennis/daria-kasatkina-ukraine-tennis-players-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230501124051-02-daria-kasatkina-043023-super-169.jpeg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-05-22T12:55:23+00:00"
 },
 {
     "author": null,
     "title": "Novak Djokovic stands by Kosovo comments at the French Open",
     "description": "Serbian tennis star Novak Djokovic has stood by his decision to send a political message about Kosovo at the French Open.",
     "url": "https://www.cnn.com/2023/06/01/tennis/novak-djokovic-french-open-kosovo-serbia-spt-intl/index.html",
     "source": "CNN Tennis",
     "image": "https://cdn.cnn.com/cnnnext/dam/assets/230601051122-01-novak-djokovic-053123-restricted-super-169.jpg",
     "category": "sports",
     "language": "en",
     "country": "us",
     "published_at": "2023-06-29T12:15:23+00:00"
 }
 */
