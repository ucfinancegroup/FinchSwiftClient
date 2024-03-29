//
// Event.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct Event: Codable {

    public var id: MongoObjectID?
    public var name: String
    public var start: Int64
    public var transforms: [AssetClassChange]

    public init(id: MongoObjectID? = nil, name: String, start: Int64, transforms: [AssetClassChange]) {
        self.id = id
        self.name = name
        self.start = start
        self.transforms = transforms
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case name
        case start
        case transforms
    }

}
