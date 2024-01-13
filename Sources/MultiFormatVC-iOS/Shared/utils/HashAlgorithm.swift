//
//  File.swift
//  
//
//  Created by Gaurav Khot on 1/12/24.
//

import Foundation
import CryptoKit

public enum HashAlgorithm : String {
    case SHA_256, SHA_384, SHA_512
    
    func digest(data: Data) -> Data {
        switch self {
        case .SHA_256:
            return Data(SHA256.hash(data: data))
        case .SHA_384:
            return Data(SHA384.hash(data: data))
        case .SHA_512:
            return Data(SHA512.hash(data: data))
        }
    }
    
    var name:String {
        switch self {
        case .SHA_256:
            return "sha-256"
        case .SHA_384:
            return "sha-384"
        case .SHA_512:
            return "sha-512"
        }
    }
}
