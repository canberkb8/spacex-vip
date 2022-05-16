//
//  RocketsService.swift
//  SpaceX
//
//  Created by Canberk Bibican on 16.05.2022.
//

import Foundation
import CNetwork

protocol RocketStoreProtocol {
    func getRocketList(completion: @escaping ((_ result: Result<[RocketsResponseModel], Error>) -> Void))
}

class RocketsService: RocketStoreProtocol {
    
    func getRocketList(completion: @escaping ((Result<[RocketsResponseModel], Error>) -> Void)) {
        CNetwork.shared.request(CNetworkRouter.rockets) { (_ result: Result<[RocketsResponseModel], Error>) in
            completion(result)
        }
    }
}
