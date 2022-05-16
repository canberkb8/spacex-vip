import Foundation
import UIKit

extension UITableViewCell {

    class var storyboardID: String {
        return "\(self)"
    }

    static func registerCellXib(with tableview: UITableView) {
        let nib = UINib(nibName: self.storyboardID, bundle: nil)
        tableview.register(nib, forCellReuseIdentifier: self.storyboardID)
    }
}
