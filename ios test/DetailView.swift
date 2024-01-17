//
//  DetailView.swift
//  ios test
//
//  Created by li haonan on 2024/1/17.
//  二级视图

import UIKit
import SnapKit

class DetailViewController: UIViewController {
    
    var selectedItem: (String, String)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let selectedItem = selectedItem {
            let text = selectedItem.0
            let imageName = selectedItem.1
            
            let backgroundView = UIView()
            backgroundView.backgroundColor = .white
            
            let label = UILabel()
            label.text = text// 设置文本内容
            label.textAlignment = .center // 设置文本居中对齐
            label.textColor = .black // 设置文本颜色
            
            let imageView = UIImageView()
            imageView.image = UIImage(named: imageName )
            
            view.addSubview(backgroundView)
            backgroundView.addSubview(imageView)
            backgroundView.addSubview(label)
            
            backgroundView.snp.makeConstraints { make in
                make.edges.equalToSuperview()
            }
            imageView.snp.makeConstraints { make in
                make.center.equalToSuperview()  // 居中于父视图
                make.centerX.equalToSuperview() // X轴居中
                //make.centerY.equalToSuperview() // Y轴居中
                make.width.equalToSuperview().multipliedBy(0.8) // 设置宽度为父视图宽度的80%
                make.height.equalTo(imageView.snp.width).multipliedBy(imageView.image!.size.height / imageView.image!.size.width) // 使用.aspectRatio设置宽高比
            }
            label.snp.makeConstraints { (make) in
                make.centerX.equalToSuperview() // 居中
                make.top.equalToSuperview().offset(200)
            }
        }
    }
}
