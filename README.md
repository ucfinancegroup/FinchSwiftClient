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

All URIs are relative to *https://finchapp.eastus.cloudapp.azure.com/api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*GoalAPI* | [**deleteGoal**](docs/GoalAPI.md#deletegoal) | **DELETE** /goal/{id} | Delete one specific goal by id
*GoalAPI* | [**getGoal**](docs/GoalAPI.md#getgoal) | **GET** /goal/{id} | Get one specific goal by id
*GoalAPI* | [**getGoals**](docs/GoalAPI.md#getgoals) | **GET** /goals | Get all of a user&#39;s goals
*GoalAPI* | [**newGoal**](docs/GoalAPI.md#newgoal) | **POST** /goal/new | Creates a new goal for the user
*GoalAPI* | [**updateGoal**](docs/GoalAPI.md#updategoal) | **PUT** /goal/{id} | Update one specific goal by id
*InsightsAPI* | [**dismissInsight**](docs/InsightsAPI.md#dismissinsight) | **PUT** /insight/{id}/dismiss | Dismiss an insight
*InsightsAPI* | [**getInsights**](docs/InsightsAPI.md#getinsights) | **GET** /insights | Get all a user&#39;s (non-dismissed) insights
*LeaderboardAPI* | [**getLeaderboard**](docs/LeaderboardAPI.md#getleaderboard) | **GET** /leaderboard/{type} | Get a leaderboard
*PlaidAPI* | [**plaidLink**](docs/PlaidAPI.md#plaidlink) | **POST** /plaid/link_token | to request link token for PlaidLink
*PlaidAPI* | [**plaidLinkAccess**](docs/PlaidAPI.md#plaidlinkaccess) | **POST** /plaid/public_token_exchange | For after a user does PlaidLink thru client
*PlaidAPI* | [**plaidWebhook**](docs/PlaidAPI.md#plaidwebhook) | **POST** /plaid/webhook | Where Plaid sends updates about items, transactions, etc https://plaid.com/docs/api/webhooks/
*PlanAPI* | [**deletePlan**](docs/PlanAPI.md#deleteplan) | **DELETE** /plan/{id} | Delete one specific plan by id
*PlanAPI* | [**getPlan**](docs/PlanAPI.md#getplan) | **GET** /plan/{id} | Get one specific plan by id
*PlanAPI* | [**getPlans**](docs/PlanAPI.md#getplans) | **GET** /plans | Get all of a user&#39;s plans
*PlanAPI* | [**newPlan**](docs/PlanAPI.md#newplan) | **POST** /plan/new | Creates a new plan for the user
*PlanAPI* | [**updatePlan**](docs/PlanAPI.md#updateplan) | **PUT** /plan/{id} | Update one specific plan by id
*RecurringAPI* | [**deleteRecurring**](docs/RecurringAPI.md#deleterecurring) | **DELETE** /recurring/{id} | Delete one specific recurring by id
*RecurringAPI* | [**getRecurring**](docs/RecurringAPI.md#getrecurring) | **GET** /recurring/{id} | Get one specific recurring by id
*RecurringAPI* | [**getRecurringExamples**](docs/RecurringAPI.md#getrecurringexamples) | **GET** /recurring/examples | Get example Recurrings
*RecurringAPI* | [**getRecurrings**](docs/RecurringAPI.md#getrecurrings) | **GET** /recurrings | Get all of a user&#39;s recurrings
*RecurringAPI* | [**newRecurring**](docs/RecurringAPI.md#newrecurring) | **POST** /recurring/new | Creates a new recurring for the user
*RecurringAPI* | [**updateRecurring**](docs/RecurringAPI.md#updaterecurring) | **PUT** /recurring/{id} | Update one specific recurring by id
*SnapshotsAPI* | [**getSnapshots**](docs/SnapshotsAPI.md#getsnapshots) | **GET** /snapshots | Get all a user&#39;s snapshots
*TimeseriesAPI* | [**getTimeseries**](docs/TimeseriesAPI.md#gettimeseries) | **GET** /timeseries | Get a user&#39;s projection timeseries
*UserAPI* | [**loginUser**](docs/UserAPI.md#loginuser) | **POST** /login | Log in a user
*UserAPI* | [**signupUser**](docs/UserAPI.md#signupuser) | **POST** /signup | Sign up a user
*UsersAPI* | [**registerIOSDevice**](docs/UsersAPI.md#registeriosdevice) | **POST** /registerIOSDevice | This route will be called once a user logs in on an iOS device and route body will contain the URL of the iOS device, this will be stored in the User model.
*UsersAPI* | [**updateUser**](docs/UsersAPI.md#updateuser) | **PUT** /update/user | This route receives a payload with requests to change data of a user
*ValidationAPI* | [**validateUser**](docs/ValidationAPI.md#validateuser) | **POST** /validate/user | This route lets our clients perform step-by-step signups.


## Documentation For Models

 - [Allocation](docs/Allocation.md)
 - [ApiError](docs/ApiError.md)
 - [Asset](docs/Asset.md)
 - [AssetToPercentMapping](docs/AssetToPercentMapping.md)
 - [Event](docs/Event.md)
 - [Goal](docs/Goal.md)
 - [GoalNewPayload](docs/GoalNewPayload.md)
 - [Insight](docs/Insight.md)
 - [ItemIdResponse](docs/ItemIdResponse.md)
 - [KnownFinancialProduct](docs/KnownFinancialProduct.md)
 - [LeaderboardResponse](docs/LeaderboardResponse.md)
 - [LinkTokenCreateResponse](docs/LinkTokenCreateResponse.md)
 - [LoginPayload](docs/LoginPayload.md)
 - [MongoObjectID](docs/MongoObjectID.md)
 - [PlaidJWT](docs/PlaidJWT.md)
 - [Plan](docs/Plan.md)
 - [PlanNewPayload](docs/PlanNewPayload.md)
 - [PublicTokenExchangeRequest](docs/PublicTokenExchangeRequest.md)
 - [Recurring](docs/Recurring.md)
 - [RecurringNewPayload](docs/RecurringNewPayload.md)
 - [SignupPayload](docs/SignupPayload.md)
 - [TimeInterval](docs/TimeInterval.md)
 - [TimePeriod](docs/TimePeriod.md)
 - [TimeSeries](docs/TimeSeries.md)
 - [Transform](docs/Transform.md)
 - [UpdateUserRequest](docs/UpdateUserRequest.md)
 - [User](docs/User.md)
 - [UserLocation](docs/UserLocation.md)
 - [ValidateUserPayload](docs/ValidateUserPayload.md)


## Documentation For Authorization


## sidCookie

- **Type**: API key
- **API key parameter name**: finch-sid
- **Location**: 


## Author



