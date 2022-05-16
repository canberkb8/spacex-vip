//
//  CNetworkConfiguration.swift
//  CNetwork
//
//  Created by Canberk Bibican on 12.05.2022.
//

import Foundation
import Alamofire

protocol CNetworkConfiguration: URLRequestConvertible {
    var method: HTTPMethod { get }
    var path: String { get }
    var parameters: Parameters? { get }
}
