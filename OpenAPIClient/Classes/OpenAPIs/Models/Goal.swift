//
// Goal.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Goal: Codable { 


    public var id: MongoObjectID
    public var name: String
    public var start: Int64
    public var end: Int64
    public var threshold: Double
    public var metric: GoalMetric

    public init(id: MongoObjectID, name: String, start: Int64, end: Int64, threshold: Double, metric: GoalMetric) {
        self.id = id
        self.name = name
        self.start = start
        self.end = end
        self.threshold = threshold
        self.metric = metric
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case id = "_id"
        case name
        case start
        case end
        case threshold
        case metric
    }

}
