//
//  RocketsTableView.swift
//  SpaceX
//
//  Created by Canberk Bibican on 16.05.2022.
//

import UIKit

protocol RocketsTableViewProtocol {
    func update(newItemList: [Rockets.GetRocketList.ViewModel.DisplayedRocket])
}

protocol RocketsTableViewOutput: AnyObject {
    func onSelected(item: Rockets.GetRocketList.ViewModel.DisplayedRocket)
}

final class RocketsTableView: NSObject {

    private lazy var itemList: [Rockets.GetRocketList.ViewModel.DisplayedRocket] = []

    /// Json TableView Output Delegate
    weak var delegate: RocketsTableViewOutput?

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        itemList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /*
        guard let cell: CategoryListTableViewCell = tableView.dequeueReusableCell(withIdentifier: CategoryListTableViewCell.identifier) as? CategoryListTableViewCell else {
            return UITableViewCell()
        }
        cell.setup(categoryModel: itemList[indexPath.row])
        cell.selectionStyle = .none
         */
        //let image = UIImageView(image: UIImage(named: "petRecognize")!)
        //image.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        //cell.accessoryView = image
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.onSelected(item: itemList[indexPath.row])
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //return UITableView.automaticDimension
        return 50
    }
}

extension RocketsTableView: UITableViewDelegate, UITableViewDataSource { }

extension RocketsTableView: RocketsTableViewProtocol {
    func update(newItemList: [Rockets.GetRocketList.ViewModel.DisplayedRocket]) {
        self.itemList = newItemList
    }
}

