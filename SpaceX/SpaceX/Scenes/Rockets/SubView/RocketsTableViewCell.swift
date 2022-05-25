//
//  RocketsTableViewCell.swift
//  SpaceX
//
//  Created by Canberk Bibican on 17.05.2022.
//

import UIKit

class RocketsTableViewCell: UITableViewCell {
    
    static let identifier = String(describing: RocketsTableViewCell.self)
    
    @IBOutlet weak var rocketCellDescription: UILabel!
    @IBOutlet weak var rocketCellTitle: UILabel!
    @IBOutlet weak var rocketCellImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func saveModel(rocketModel: Rockets.GetRocketList.ViewModel.DisplayedRocket){
        rocketCellImageView.forURL(rocketModel.rocketImage ?? "") { error in
            print(error)
        }
        rocketCellImageView.layer.cornerRadius = 10
        rocketCellImageView.contentMode = .scaleAspectFill
        rocketCellTitle.text = rocketModel.rocketName ?? ""
        rocketCellTitle.numberOfLines = 0
        rocketCellDescription.text = rocketModel.rocketDescription ?? ""
        rocketCellDescription.numberOfLines = 0
    }
    
    
    
}
