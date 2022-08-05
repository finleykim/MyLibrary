//
//  BookListView.swift
//  MyLibrary
//
//  Created by Finley on 2022/08/05.
//

import RxSwift
import RxCocoa

class BookListView: UITableView {
    let disposeBag = DisposeBag()
    
    let cellData = PublishSubject<[BookListCellData]>()
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)

        attribute()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bind(_ viewModel: BookListViewModel) {
        viewModel.cellData
            .asDriver(onErrorJustReturn: [])
            .drive(self.rx.items) { tv, row, data in
                let index = IndexPath(row: row, section: 0)
                let cell = tv.dequeueReusableCell(withIdentifier: "BookListCell", for: index) as! BookListCell
                cell.setData(data)
                return cell
            }
            .disposed(by: disposeBag)
    }
    
    private func attribute() {
        self.backgroundColor = .white
        self.register(BookListCell.self, forCellReuseIdentifier: "BookListCell")
        self.separatorStyle = .singleLine
        self.rowHeight = 100
    }
}

