//
//  CryptoTableView.swift
//  testing123
//
//  Created by Brian Zhou on 4/6/22.
//

import UIKit

struct CryptoTableViewCellModel {
    let name: String
    let symbol:String
    let price: String
}

class CryptoTableView: UITableViewCell {
    
    static let identifier = "CryptoTableView"
        
        private let nameLabel: UILabel = {
            let label = UILabel()
            label.font = .systemFont(ofSize: 24, weight: .medium)
            return label
        }()
        
        private let symbolLabel: UILabel = {
            let label = UILabel()
            label.font = .systemFont(ofSize: 20, weight: .medium)
            return label
        }()
        
        private let priceLabel: UILabel = {
            let label = UILabel()
            label.textColor = .systemGreen
            label.font = .systemFont(ofSize: 22, weight: .semibold)
            return label
        }()
        
        override init(style: UITableViewCell.CellStyle, reuseIdentifier:String?){
            super.init(style: style, reuseIdentifier:  reuseIdentifier)
            contentView.addSubview(nameLabel)
            contentView.addSubview(symbolLabel)
            contentView.addSubview(priceLabel)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func layoutSubviews(){
            super.layoutSubviews()
            nameLabel.sizeToFit()
            priceLabel.sizeToFit()
            symbolLabel.sizeToFit()
            nameLabel.frame = CGRect(x: 15, y: 0, width: contentView.frame.size.width/2, height: contentView.frame.size.height/2)
            symbolLabel.frame = CGRect(x: 15, y: contentView.frame.size.height/2, width: contentView.frame.size.width/2, height: contentView.frame.size.height/2)
            priceLabel.frame = CGRect(x: contentView.frame.size.width/2, y: 0, width: (contentView.frame.size.width/2)-15, height: contentView.frame.size.height)
        }
        
        func configure(with viewModel: CryptoTableViewCellModel){
            nameLabel.text = viewModel.name
            priceLabel.text = viewModel.price
            symbolLabel.text = viewModel.symbol
        }
}
