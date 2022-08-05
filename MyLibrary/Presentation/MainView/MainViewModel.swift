//
//  MainViewModel.swift
//  MyLibrary
//
//  Created by Finley on 2022/08/05.
//

import RxCocoa
import RxSwift

struct MainViewModel {
    let disposeBag = DisposeBag()
    
    let searchBarViewModel = SearchBarViewModel()
    let bookListViewModel = BookListViewModel()
    
    let alertActionTapped = PublishRelay<MainViewController.AlertAction>()
    let shouldPresentAlert: Signal<MainViewController.Alert>
    
    init(model: MainModel = MainModel()) {
        let bookResult = searchBarViewModel.shouldLoadResult
            .flatMapLatest(model.searchBook)
            .share()
        
        let bookValue = bookResult
            .map(model.getBookValue)
            .filter { $0 != nil }
        
        let bookError = bookResult
            .map(model.getBookError)
            .filter { $0 != nil }
        
        let cellData = bookValue
            .map(model.getBookListCellData)
        
        let sortedType = alertActionTapped
            .filter {
                switch $0 {
                case .title, .datetime:
                    return true
                default:
                    return false
                }
            }
            .startWith(.title)
        
        //MainViewController -> ListView
        Observable
            .combineLatest(
                            sortedType,
                            cellData,
                            resultSelector: model.sort
                        )
            .bind(to: bookListViewModel.bookListCellData)
            .disposed(by: disposeBag)
        
        let alertSheetForSorting = bookListViewModel.filterViewModel.sortButtonTapped
            .map { _ -> MainViewController.Alert in
                return (title: nil, message: nil, actions: [.title, .datetime, .cancel], style: .actionSheet)
            }
        
        let alertForErrorMessage = bookError
            .do(onNext: { message in
                print("error: \(message ?? "")")
            })
            .map { _ -> MainViewController.Alert in
                return (
                    title: "앗!",
                    message: "예상치 못한 오류가 발생했습니다. 잠시 후 다시 시도해주세요.",
                    actions: [.confirm],
                    style: .alert
                )
            }
        
        self.shouldPresentAlert = Observable
            .merge(
                alertSheetForSorting,
                alertForErrorMessage
            )
            .asSignal(onErrorSignalWith: .empty())
    }
}

