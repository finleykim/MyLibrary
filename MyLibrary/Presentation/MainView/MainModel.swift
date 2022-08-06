//
//  MainModel.swift
//  MyLibrary
//
//  Created by Finley on 2022/08/05.
//

import RxSwift

struct MainModel {
    let network = SearchBookNetwork()
    
    func searchBook(_ query: String) -> Single<Result<Book, SearchNetworkError>> {
        return network.searchBook(query: query)
    }
    
    func getBookValue(_ result: Result<Book, SearchNetworkError>) -> Book? {
        guard case .success(let value) = result else {
            return nil
        }
        return value
    }
    
    func getBookError(_ result: Result<Book, SearchNetworkError>) -> String? {
        guard case .failure(let error) = result else {
            return nil
        }
        return error.message
    }
    
    func getBookListCellData(_ value: Book?) -> [BookListCellData] {
        guard let value = value else {
            return []
        }
        
        return value.documents
            .map {
                let thumbnailURL = URL(string: $0.thumbnail ?? "")
                let description = $0.description?[0]
                return BookListCellData(
                    thumbnailURL: thumbnailURL,
                    description: description,
                    title: $0.title,
                    datetime: $0.datetime
                )
            }
    }
    
    func sort(by type: MainViewController.AlertAction, of data: [BookListCellData]) -> [BookListCellData] {
        switch type {
        case .title:
            return data.sorted { $0.title ?? "" < $1.title ?? "" }
        case .datetime:
            return data.sorted { $0.datetime ?? Date() > $1.datetime ?? Date() }
        case .cancel, .confirm:
            return data
        }
    }
}

