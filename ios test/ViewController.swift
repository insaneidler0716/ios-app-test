//
//  ViewController.swift
//  ios test
//
//  Created by li haonan on 2024/1/16.
//

import UIKit
import SnapKit

class ViewController: UIViewController{
    
    let data = [("正门", "IMG_gate"), ("教5楼", "IMG_buliding_5"), ("逸夫楼", "IMG_laboratory"),("体育馆", "IMG_gym"), ("地大国际会议中心","IMG_hotel"), ("I Love CUGB", "IMG_love"), ("操场","IMG_playground"),("摇篮石","IMG_rock")]
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}







