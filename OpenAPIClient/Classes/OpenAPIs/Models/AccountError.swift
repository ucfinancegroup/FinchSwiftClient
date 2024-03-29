//
// AccountError.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AccountError: Codable {

    public var itemId: String
    public var code: Int
    public var message: String

    public init(itemId: String, code: Int, message: String) {
        self.itemId = itemId
        self.code = code
        self.message = message
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case itemId = "item_id"
        case code
        case message
    }

}
