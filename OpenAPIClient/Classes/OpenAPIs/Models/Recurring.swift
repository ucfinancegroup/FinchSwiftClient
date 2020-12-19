//
// Recurring.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Recurring: Codable { 


    public var id: String
    public var name: String
    public var start: Int
    public var end: Int
    public var principal: Int
    public var amount: Int
    public var interest: Int
    public var amountFreq: TimeInterval
    public var interestFreq: TimeInterval
    public var contributionFreq: TimeInterval

    public init(id: String, name: String, start: Int, end: Int, principal: Int, amount: Int, interest: Int, amountFreq: TimeInterval, interestFreq: TimeInterval, contributionFreq: TimeInterval) {
        self.id = id
        self.name = name
        self.start = start
        self.end = end
        self.principal = principal
        self.amount = amount
        self.interest = interest
        self.amountFreq = amountFreq
        self.interestFreq = interestFreq
        self.contributionFreq = contributionFreq
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case id = "_id"
        case name
        case start
        case end
        case principal
        case amount
        case interest
        case amountFreq = "amount_freq"
        case interestFreq = "interest_freq"
        case contributionFreq = "contribution_freq"
    }

}
