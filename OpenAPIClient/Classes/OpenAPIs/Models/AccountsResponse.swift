//
// AccountsResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct AccountsResponse: Codable { 


    public var accounts: [Account]
    public var errors: [AccountError]

    public init(accounts: [Account], errors: [AccountError]) {
        self.accounts = accounts
        self.errors = errors
    }

}
