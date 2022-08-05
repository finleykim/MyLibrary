//
//  Network.swift
//  MyLibrary
//
//  Created by Finley on 2022/08/05.
//

import RxSwift

class SearchBookNetwork {
    private let session: URLSession
    let api = SearchBookAPI()
    
    init(session: URLSession = .shared) {
        self.session = session
    }
    
    func searchBook(query: String) -> Single<Result<Book, SearchNetworkError>> {
        guard let url = api.searchBook(query: query).url else {
            return .just(.failure(.invalidURL))
        }
        
        let request = NSMutableURLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue(Storage().apiKey, forHTTPHeaderField: "Authorization")
        
        return session.rx.data(request: request as URLRequest)
            .map { data in
                do {
                    let bookData = try JSONDecoder().decode(Book.self, from: data)
                    return .success(bookData)
                } catch {
                    return .failure(.invalidJSON)
                }
            }
            .catch { _ in
                .just(.failure(.networkError))
            }
            .asSingle()
    }
}

