//
//  LocalNetworkStub.swift
//  MyLibraryTests
//
//  Created by Finley on 2022/08/05.
//

import Foundation
import RxSwift
import Stubber

@testable import MyLibrary

class SearchNetworkStub: SearchBookNetwork {
    override func searchBook(query: String) -> Single<Result<Book, SearchNetworkError>> {
        return Stubber.invoke(searchBook(query:),args: query)
    }
}
