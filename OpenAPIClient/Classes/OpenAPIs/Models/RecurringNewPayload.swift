//
// RecurringNewPayload.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct RecurringNewPayload: Codable {

    public var name: String
    public var start: Int64
    public var end: Int64
    public var principal: Double
    public var amount: Double
    public var interest: Double
    public var frequency: TimeInterval

    public init(name: String, start: Int64, end: Int64, principal: Double, amount: Double, interest: Double, frequency: TimeInterval) {
        self.name = name
        self.start = start
        self.end = end
        self.principal = principal
        self.amount = amount
        self.interest = interest
        self.frequency = frequency
    }

}
