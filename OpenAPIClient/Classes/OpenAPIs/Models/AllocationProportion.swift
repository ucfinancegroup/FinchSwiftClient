//
// AllocationProportion.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AllocationProportion: Codable {

    public var asset: Asset
    public var proportion: Double?

    public init(asset: Asset, proportion: Double? = nil) {
        self.asset = asset
        self.proportion = proportion
    }

}
