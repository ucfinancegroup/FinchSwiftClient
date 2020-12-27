//
// ValidateUserPayload.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ValidateUserPayload: Codable { 


    public enum Typ: String, Codable {
        case email = "email"
        case password = "password"
    }
    public var typ: Typ
    public var content: String

    public init(typ: Typ, content: String) {
        self.typ = typ
        self.content = content
    }

}
