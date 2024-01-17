//
//  CellView.swift
//  ios test
//
//  Created by li haonan on 2024/1/17.
//单元格视图

import UIKit
import SnapKit

extension ViewController: UITableViewDelegate, UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

            // 清除 cell 中已有的内容，以防止重用带来的影响
            for subview in cell.contentView.subviews {
                subview.removeFromSuperview()
            }

            let (text, imageName) = data[indexPath.row]

            // 添加文本标签
            let label = UILabel()
            label.text = text
            label.frame = CGRect(x: 70, y: 10, width: 200, height: 30)
            cell.contentView.addSubview(label)

            // 添加图片视图
            let imageView = UIImageView(image: UIImage(named: imageName))
            imageView.frame = CGRect(x: 20, y: 5, width: 35, height: 35)
            cell.contentView.addSubview(imageView)

            return cell
        }
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 在用户点击单元格时调用此方法
        tableView.deselectRow(at: indexPath, animated: true)

        // 创建新的视图控制器
        let detailViewController = DetailViewController()

        // 传递数据给新的视图控制器
        detailViewController.selectedItem = data[indexPath.row]

        // 执行跳转操作
        navigationController?.pushViewController(detailViewController, animated: true)
    }
}
