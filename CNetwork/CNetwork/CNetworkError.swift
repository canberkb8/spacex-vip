//
//  CNetworkError.swift
//  CNetwork
//
//  Created by Canberk Bibican on 12.05.2022.
//

import Foundation

public enum CNetworkError: Error {
    case notFound
    case unexpected(code: Int)
    case internetConnection
}

extension CNetworkError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .notFound:
            return NSLocalizedString(
                "The specified item could not be found.",
                comment: "Resource Not Found"
            )
        case .unexpected(_):
            return NSLocalizedString(
                "An unexpected error occurred.",
                comment: "Unexpected Error"
            )
        case .internetConnection:
            return NSLocalizedString(
                "There was a problem with your internet connection.",
                comment: "Connection Error"
            )
        }
    }
}
