//
//  Constants.swift
//  CNetwork
//
//  Created by Canberk Bibican on 12.05.2022.
//

import Foundation

struct Constants {
    static let baseUrl = "https://api.spacexdata.com/v3"
}

//The header fields
enum HttpHeaderField: String {
    case contentType = "Content-Type"
}

//The content type (JSON)
enum ContentType: String {
    case json = "application/json"
}
