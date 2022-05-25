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
    func getRocketDetail(request: RocketDetail.GetRocketDetail.Request, completion: @escaping ((_ result: Result<RocketDetailResponseModel, Error>) -> Void))
}

class RocketsService: RocketStoreProtocol {

    func getRocketList(completion: @escaping ((Result<[RocketsResponseModel], Error>) -> Void)) {
        CNetwork.shared.request(CNetworkRouter.rockets) { result in
            completion(result)
        }
    }

    func getRocketDetail(request: RocketDetail.GetRocketDetail.Request, completion: @escaping ((_ result: Result<RocketDetailResponseModel, Error>) -> Void)) {
        CNetwork.shared.request(CNetworkRouter.rocket(rocketID: request.rocketId!)) { result in
            completion(result)
        }
    }
}
