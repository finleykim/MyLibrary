//
//  FilterViewModel.swift
//  MyLibrary
//
//  Created by Finley on 2022/08/05.
//

import RxCocoa
import RxSwift

struct FilterViewModel {
    let sortButtonTapped = PublishRelay<Void>()
}
