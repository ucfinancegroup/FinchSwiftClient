//
// Account.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Account: Codable { 


    public var itemId: String
    public var name: String
    public var balance: Int

    public init(itemId: String, name: String, balance: Int) {
        self.itemId = itemId
        self.name = name
        self.balance = balance
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case itemId = "item_id"
        case name
        case balance
    }

}
