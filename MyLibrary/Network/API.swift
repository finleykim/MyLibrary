//
//  API.swift
//  MyLibrary
//
//  Created by Finley on 2022/08/05.
//

import RxSwift

struct SearchBookAPI {
    static let scheme = "https"
    static let host = "dapi.kakao.com"
    static let path = "/v3/search/"
    
    func searchBook(query: String) -> URLComponents {
        var components = URLComponents()
        components.scheme = SearchBookAPI.scheme
        components.host = SearchBookAPI.host
        components.path = SearchBookAPI.path + "book"
        
        components.queryItems = [
            URLQueryItem(name: "query", value: query),
            URLQueryItem(name: "size", value: "50")
        ]
        
        return components
    }
}
