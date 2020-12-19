//
// User.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct User: Codable { 


    public var email: String
    public var location: UserLocation
    public var firstName: String
    public var lastName: String
    public var income: Double?
    public var deviceUrl: String?

    public init(email: String, location: UserLocation, firstName: String, lastName: String, income: Double?, deviceUrl: String?) {
        self.email = email
        self.location = location
        self.firstName = firstName
        self.lastName = lastName
        self.income = income
        self.deviceUrl = deviceUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case email
        case location
        case firstName = "first_name"
        case lastName = "last_name"
        case income
        case deviceUrl = "device_url"
    }

}
