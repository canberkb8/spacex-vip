//
//  RocketsResponseModel.swift
//  SpaceX
//
//  Created by Canberk Bibican on 16.05.2022.
//

import Foundation

// MARK: - RocketsResponseModel
struct RocketsResponseModel: Codable {
    let id: Int?
    let flickrImages: [String]?
    let rocketDescription, rocketID, rocketName, rocketType: String?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case flickrImages = "flickr_images"
        case rocketDescription = "description"
        case rocketID = "rocket_id"
        case rocketName = "rocket_name"
        case rocketType = "rocket_type"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        flickrImages = try values.decodeIfPresent([String].self, forKey: .flickrImages)
        rocketDescription = try values.decodeIfPresent(String.self, forKey: .rocketDescription)
        rocketID = try values.decodeIfPresent(String.self, forKey: .rocketID)
        rocketName = try values.decodeIfPresent(String.self, forKey: .rocketName)
        rocketType = try values.decodeIfPresent(String.self, forKey: .rocketType)
    }
}
