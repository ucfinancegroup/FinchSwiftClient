//
// ValidateUserPayload.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ValidateUserPayload: Codable {

    public enum Field: String, Codable, CaseIterable {
        case email = "Email"
        case password = "Password"
        case birthday = "Birthday"
    }
    public var field: Field
    public var content: String

    public init(field: Field, content: String) {
        self.field = field
        self.content = content
    }

}
