//
//  DetailView.swift
//  ios test
//
//  Created by li haonan on 2024/1/17.
// 

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
            label.text = text
            label.textAlignment = .center
            label.textColor = .black
            
            let imageView = UIImageView()
            imageView.image = UIImage(named: imageName )
            
            view.addSubview(backgroundView)
            backgroundView.addSubview(imageView)
            backgroundView.addSubview(label)
            
            backgroundView.snp.makeConstraints { make in
                make.edges.equalToSuperview()
            }
            
            imageView.snp.makeConstraints { make in
                make.center.equalToSuperview()
                make.centerX.equalToSuperview()
                make.width.equalToSuperview().multipliedBy(0.8)
                make.height.equalTo(imageView.snp.width).multipliedBy(imageView.image!.size.height / imageView.image!.size.width)
            }
            
            label.snp.makeConstraints { (make) in
                make.centerX.equalToSuperview() 
                make.top.equalToSuperview().offset(200)
            }
        }
    }
}
