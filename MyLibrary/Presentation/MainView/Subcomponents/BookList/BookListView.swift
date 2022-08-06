//
//  BookListView.swift
//  MyLibrary
//
//  Created by Finley on 2022/08/05.
//

import RxSwift
import RxCocoa

final class BookListView: UITableView {
    private let disposeBag = DisposeBag()
    
    private let headerView = FilterView(
        frame: CGRect(
            origin: .zero,
            size: CGSize(width: UIScreen.main.bounds.width, height: 50)
        )
    )
    
    //MainViewController -> BookListView
    let cellData = PublishSubject<[BookListCellData]>()
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)

        attribute()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bind(_ viewModel: BookListViewModel) {
        headerView.bind(viewModel.filterViewModel)
        viewModel.cellData
            .asDriver(onErrorJustReturn: [])
            .drive(self.rx.items) { tv, row, data in
                let index = IndexPath(row: row, section: 0)
                let cell = tv.dequeueReusableCell(withIdentifier: "BookListCell", for: index) as! BookListCell
                cell.setData(data)
                cell.backgroundColor = .white
                return cell
            }
            .disposed(by: disposeBag)
    }
    
    private func attribute() {
        self.register(BookListCell.self, forCellReuseIdentifier: "BookListCell")
        self.separatorStyle = .singleLine
        self.rowHeight = 100
        self.tableHeaderView = headerView
        headerView.backgroundColor = .white
    }
}

