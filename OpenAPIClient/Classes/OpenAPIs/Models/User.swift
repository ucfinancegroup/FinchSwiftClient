//
// User.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct User: Codable {

    public var email: String
    public var firstName: String
    public var lastName: String
    public var location: Location
    public var income: Double
    public var deviceUrl: String?

    public init(email: String, firstName: String, lastName: String, location: Location, income: Double, deviceUrl: String? = nil) {
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.location = location
        self.income = income
        self.deviceUrl = deviceUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case firstName = "first_name"
        case lastName = "last_name"
        case location
        case income
        case deviceUrl = "device_url"
    }

}
