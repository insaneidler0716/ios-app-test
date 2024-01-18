//
//  ViewController.swift
//  iOS-phone-test
//
//  Created by li haonan on 2024/1/18.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let data: [(text: String, imageUrl: String)] = [
        (text: "东门", imageUrl: "IMG_EastGate"),
        (text: "教5楼", imageUrl: "IMG_FifthBuilding"),
        (text: "逸夫楼", imageUrl: "IMG_LaboratoryBuilding"),
        (text: "体育馆", imageUrl: "IMG_Gym"),
        (text: "地大国际会议中心", imageUrl: "IMG_InternationalConventionCenter"),
        (text: "I Love CUGB", imageUrl: "IMG_IIoveCUGB"),
        (text: "运动场", imageUrl: "IMG_Playground"),
        (text: "摇篮石", imageUrl: "IMG_RockOfCradle"),
    ]
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        tableView.rowHeight = 60.0 
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        let item = data[indexPath.row]
        cell.titleLabel.text = item.text
        cell.detailImageView.image = UIImage(named: item.imageUrl)
        return cell
    }
    
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let detailViewController = DetailViewController()
        detailViewController.selectedItem = data[indexPath.row]
        navigationController?.pushViewController(detailViewController, animated: true)
    }
}

