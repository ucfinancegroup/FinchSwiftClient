//
// PlanNewPayload.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct PlanNewPayload: Codable {

    public var name: String
    public var recurrings: [Recurring]
    public var allocations: [Allocation]
    public var events: [Event]

    public init(name: String, recurrings: [Recurring], allocations: [Allocation], events: [Event]) {
        self.name = name
        self.recurrings = recurrings
        self.allocations = allocations
        self.events = events
    }

}
