//
// Ranking.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct Ranking: Codable {

    public var leaderboardType: String
    public var description: String?
    public var percentile: Double

    public init(leaderboardType: String, description: String? = nil, percentile: Double) {
        self.leaderboardType = leaderboardType
        self.description = description
        self.percentile = percentile
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case leaderboardType = "leaderboard_type"
        case description
        case percentile
    }

}
