//
//  MainViewModelTest.swift
//  MyLibraryTests
//
//  Created by Finley on 2022/08/05.
//

import XCTest
import Nimble

@testable import MyLibrary

class MainModelTest: XCTestCase {
    let stubNetwork = LocalNetworkStub()
    
    var book: Book?
    var model: MainModel!
    
    override func setUp() {
        self.book = bookList
        self.model = MainModel()
    }
    
    func testGetBookListCellData() {
        let cellData = model.getBookListCellData(book)
        let thumbnailURL = cellData[1].thumbnailURL
        let thumbnail = book?.documents[1].thumbnail
        
        expect(thumbnailURL).to(
            equal(URL(string: thumbnail ?? "")),
            description: "Book의 thumbnail이 빈 값이 아닐 경우 thumbnailURL이 cellData에 전달된다"
        )
    }
}

