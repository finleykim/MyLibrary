//
//  BookListViewModel.swift
//  MyLibrary
//
//  Created by Finley on 2022/08/05.
//

import RxCocoa
import RxSwift

struct BookListViewModel {
    let filterViewModel = FilterViewModel()
    let bookListCellData = PublishSubject<[BookListCellData]>()
    let cellData: Driver<[BookListCellData]>
    
    init() {
        self.cellData = bookListCellData
            .asDriver(onErrorJustReturn: [])
    }
}
