//
//  CNetwork.swift
//  CNetwork
//
//  Created by Canberk Bibican on 12.05.2022.
//

import Foundation
import Alamofire

public final class CNetwork {

    public static let shared = CNetwork()
    
    public func request<T: Decodable>(_ urlConvertible: URLRequestConvertible, loading: Bool = false, completion: @escaping (Result<T, Error>) -> Void) {
        //if loading { activityIndicatorView.startAnimating() }
        if Connectivity.isConnectedToInternet {
            AF.request(urlConvertible).responseDecodable { (response: AFDataResponse<T>) in
                switch response.result {
                case .success(let responseData):
                    completion(.success(responseData))
                case .failure(let error):
                    completion(.failure(error))
                }
                //if loading { self.activityIndicatorView.stopAnimating() }
            }
        } else {
            //if loading { activityIndicatorView.stopAnimating() }
            completion(.failure(CNetworkError.internetConnection))
        }
    }

    struct Connectivity {
        static let sharedInstance = NetworkReachabilityManager()!
        static var isConnectedToInternet: Bool {
            return self.sharedInstance.isReachable
        }
    }
}
