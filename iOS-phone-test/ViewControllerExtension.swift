//
//  ViewControllerExtension.swift
//  iOS-phone-test
//
//  Created by li haonan on 2024/1/18.
//

import UIKit
import SnapKit

class CustomTableViewCell: UITableViewCell {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        return label
    }()
        
    let ImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(ImageView)
        addSubview(titleLabel)

        ImageView.snp.makeConstraints { make in
            make.width.height.equalTo(20)
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(16)
            //make.width.equalTo(cellImageView.snp.height)
        }
        layoutIfNeeded()

        titleLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(200)
            make.centerY.equalToSuperview()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
