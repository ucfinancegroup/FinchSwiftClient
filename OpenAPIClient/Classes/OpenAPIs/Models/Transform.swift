//
// Transform.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Transform: Codable { 


    public var trigger: TimeInterval
    public var changes: [AssetChange]?

    public init(trigger: TimeInterval, changes: [AssetChange]?) {
        self.trigger = trigger
        self.changes = changes
    }

}
