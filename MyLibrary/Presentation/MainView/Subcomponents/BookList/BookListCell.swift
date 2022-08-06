//
//  BookListCell.swift
//  MyLibrary
//
//  Created by Finley on 2022/08/05.
//

import UIKit
import SnapKit
import Kingfisher

final class BookListCell: UITableViewCell {
    private let thumbnailImageView = UIImageView()
    private let nameLabel = UILabel()
    private let titleLabel = UILabel()
    private let datetimeLabel = UILabel()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        thumbnailImageView.contentMode = .scaleAspectFit
        
        titleLabel.font = .systemFont(ofSize: 18, weight: .bold)
        titleLabel.textColor = .black
        
        nameLabel.font = .systemFont(ofSize: 14)
        nameLabel.textColor = .black
        
        datetimeLabel.font = .systemFont(ofSize: 12, weight: .light)
        datetimeLabel.textColor = .black
        
        [thumbnailImageView, nameLabel, titleLabel, datetimeLabel].forEach {
            contentView.addSubview($0)
        }
        
        thumbnailImageView.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.top.leading.bottom.equalToSuperview().inset(8)
            $0.width.height.equalTo(80)
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(8)
            $0.leading.equalTo(thumbnailImageView.snp.trailing).offset(8)
            $0.trailing.equalToSuperview().inset(8)
        }
        
        nameLabel.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(8)
            $0.leading.equalTo(titleLabel)
            $0.trailing.equalToSuperview().offset(8)
        }
        
        datetimeLabel.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(2)
            $0.leading.equalTo(titleLabel)
            $0.bottom.equalTo(thumbnailImageView)
        }
    }
    
    func setData(_ data: BookListCellData) {
        thumbnailImageView.kf.setImage(with: data.thumbnailURL, placeholder: UIImage(systemName: "photo"))
        nameLabel.text = data.description
        titleLabel.text = data.title
        
        var datetime: String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy년 MM월 dd일"
            let contentDate = data.datetime ?? Date()
            
            return dateFormatter.string(from: contentDate)
        }
        
        datetimeLabel.text = datetime
    }
}
