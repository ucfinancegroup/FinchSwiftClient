//
// MongoObjectID.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct MongoObjectID: Codable { 


    public var oid: String

    public init(oid: String) {
        self.oid = oid
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case oid = "$oid"
    }

}