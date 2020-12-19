# Swift5 API client for OpenAPIClient

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 0.0.1
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://localhost:8888*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*PlaidAPI* | [**plaidLink**](docs/PlaidAPI.md#plaidlink) | **POST** /api/plaid/link_token | to request link token for PlaidLink
*PlaidAPI* | [**plaidLinkAccess**](docs/PlaidAPI.md#plaidlinkaccess) | **POST** /api/plaid/public_token_exchange | For after a user does PlaidLink thru client
*UserAPI* | [**loginUser**](docs/UserAPI.md#loginuser) | **POST** /api/login | Log in a user
*UserAPI* | [**signupUser**](docs/UserAPI.md#signupuser) | **POST** /api/signup | Sign up a user


## Documentation For Models

 - [ApiError](docs/ApiError.md)
 - [ItemIdResponse](docs/ItemIdResponse.md)
 - [LinkTokenCreateResponse](docs/LinkTokenCreateResponse.md)
 - [LoginPayload](docs/LoginPayload.md)
 - [PublicTokenExchangeRequest](docs/PublicTokenExchangeRequest.md)
 - [SignupPayload](docs/SignupPayload.md)
 - [SignupResponse](docs/SignupResponse.md)


## Documentation For Authorization


## sidCookie

- **Type**: API key
- **API key parameter name**: sid
- **Location**: 

## userIdCookie

- **Type**: API key
- **API key parameter name**: user_id
- **Location**: 


## Author



