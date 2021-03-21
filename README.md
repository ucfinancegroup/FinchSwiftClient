# Swift5 API client for OpenAPIClient

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 0.1.0
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
*AssetClassesAPI* | [**getAssetClasses**](docs/AssetClassesAPI.md#getassetclasses) | **GET** /asset_classes | Gets list of asset classes
*EventAPI* | [**getEventExamples**](docs/EventAPI.md#geteventexamples) | **GET** /event/examples | Get example events
*GoalAPI* | [**deleteGoal**](docs/GoalAPI.md#deletegoal) | **DELETE** /goal/{id} | Delete one specific goal by id
*GoalAPI* | [**getGoal**](docs/GoalAPI.md#getgoal) | **GET** /goal/{id} | Get one specific goal by id
*GoalAPI* | [**getGoalExamples**](docs/GoalAPI.md#getgoalexamples) | **GET** /goal/examples | Get example Goals
*GoalAPI* | [**getGoals**](docs/GoalAPI.md#getgoals) | **GET** /goals | Get all of a user&#39;s goals
*GoalAPI* | [**newGoal**](docs/GoalAPI.md#newgoal) | **POST** /goal/new | Creates a new goal for the user
*GoalAPI* | [**updateGoal**](docs/GoalAPI.md#updategoal) | **PUT** /goal/{id} | Update one specific goal by id
*InsightsAPI* | [**dismissInsight**](docs/InsightsAPI.md#dismissinsight) | **PUT** /insight/{id}/dismiss | Dismiss an insight
*InsightsAPI* | [**getInsightExamples**](docs/InsightsAPI.md#getinsightexamples) | **GET** /insights/examples | Get example insights
*InsightsAPI* | [**getInsights**](docs/InsightsAPI.md#getinsights) | **GET** /insights | Get all a user&#39;s (non-dismissed) insights
*LeaderboardAPI* | [**getLeaderboard**](docs/LeaderboardAPI.md#getleaderboard) | **GET** /leaderboard/{type} | Get a leaderboard
*PlaidAPI* | [**deleteAccount**](docs/PlaidAPI.md#deleteaccount) | **DELETE** /plaid/accounts/{id} | Delete account with given item_id
*PlaidAPI* | [**getAccounts**](docs/PlaidAPI.md#getaccounts) | **GET** /plaid/accounts/{allOrUnhidden} | Get all of user&#39;s connected accounts
*PlaidAPI* | [**plaidLink**](docs/PlaidAPI.md#plaidlink) | **POST** /plaid/link_token | to request link token for PlaidLink
*PlaidAPI* | [**plaidLinkAccess**](docs/PlaidAPI.md#plaidlinkaccess) | **POST** /plaid/public_token_exchange | For after a user does PlaidLink thru client
*PlaidAPI* | [**setAccountAsHidden**](docs/PlaidAPI.md#setaccountashidden) | **PUT** /plaid/accounts/hide | Hides or unhides an account
*PlanAPI* | [**deletePlan**](docs/PlanAPI.md#deleteplan) | **DELETE** /plan | Delete user&#39;s plan
*PlanAPI* | [**getPlaidPlan**](docs/PlanAPI.md#getplaidplan) | **GET** /plan/plaid | Get plaid plan and generate timeseries for 365 days
*PlanAPI* | [**getPlaidPlanWithDays**](docs/PlanAPI.md#getplaidplanwithdays) | **GET** /plan/plaid/{days} | Get plaid plan and generate timeseries for specified number of days
*PlanAPI* | [**getPlan**](docs/PlanAPI.md#getplan) | **GET** /plan | Get plan and generate timeseries for 365 days
*PlanAPI* | [**getPlanWithDays**](docs/PlanAPI.md#getplanwithdays) | **GET** /plan/{days} | Get plan and generate timeseries for specified number of days
*PlanAPI* | [**newPlan**](docs/PlanAPI.md#newplan) | **POST** /plan | Creates a new plan for the user and generate timeseries for 365 days
*PlanAPI* | [**newPlanWithDays**](docs/PlanAPI.md#newplanwithdays) | **POST** /plan/{days} | Creates a new plan for the user and generate timeseries for specified number of days
*PlanAPI* | [**updatePlan**](docs/PlanAPI.md#updateplan) | **PUT** /plan | Update plan and generate timeseries for 365 days
*PlanAPI* | [**updatePlanWithDays**](docs/PlanAPI.md#updateplanwithdays) | **PUT** /plan/{days} | Update plan and generate timeseries for specified number of days
*RecurringAPI* | [**deleteRecurring**](docs/RecurringAPI.md#deleterecurring) | **DELETE** /recurring/{id} | Delete one specific recurring by id
*RecurringAPI* | [**getRecurring**](docs/RecurringAPI.md#getrecurring) | **GET** /recurring/{id} | Get one specific recurring by id
*RecurringAPI* | [**getRecurringExamples**](docs/RecurringAPI.md#getrecurringexamples) | **GET** /recurring/examples | Get example Recurrings
*RecurringAPI* | [**getRecurrings**](docs/RecurringAPI.md#getrecurrings) | **GET** /recurrings | Get all of a user&#39;s recurrings
*RecurringAPI* | [**newRecurring**](docs/RecurringAPI.md#newrecurring) | **POST** /recurring/new | Creates a new recurring for the user
*RecurringAPI* | [**updateRecurring**](docs/RecurringAPI.md#updaterecurring) | **PUT** /recurring/{id} | Update one specific recurring by id
*SnapshotsAPI* | [**getSnapshots**](docs/SnapshotsAPI.md#getsnapshots) | **GET** /snapshots | Get all a user&#39;s snapshots
*TimeseriesAPI* | [**getTimeseries**](docs/TimeseriesAPI.md#gettimeseries) | **GET** /timeseries/{days} | Get a user&#39;s projection timeseries
*TimeseriesAPI* | [**getTimeseriesExample**](docs/TimeseriesAPI.md#gettimeseriesexample) | **GET** /timeseries/example | Get an example timeseries
*TimeseriesAPI* | [**getTimeseriesYear**](docs/TimeseriesAPI.md#gettimeseriesyear) | **GET** /timeseries | Get timeseries with 365 future days generated
*UserAPI* | [**getUser**](docs/UserAPI.md#getuser) | **GET** /user | Gets user info
*UserAPI* | [**loginUser**](docs/UserAPI.md#loginuser) | **POST** /login | Log in a user
*UserAPI* | [**logoutUser**](docs/UserAPI.md#logoutuser) | **POST** /logout | Log out a user
*UserAPI* | [**signupUser**](docs/UserAPI.md#signupuser) | **POST** /signup | Sign up a user
*UsersAPI* | [**registerIOSDevice**](docs/UsersAPI.md#registeriosdevice) | **POST** /registerIOSDevice | This route will be called once a user logs in on an iOS device and route body will contain the URL of the iOS device, this will be stored in the User model.
*UsersAPI* | [**updateUser**](docs/UsersAPI.md#updateuser) | **PUT** /update/user | This route receives a payload with requests to change data of a user
*ValidationAPI* | [**validateUser**](docs/ValidationAPI.md#validateuser) | **POST** /validate/user | This route lets our clients perform step-by-step signups.


## Documentation For Models

 - [Account](docs/Account.md)
 - [AccountError](docs/AccountError.md)
 - [AccountsResponse](docs/AccountsResponse.md)
 - [Allocation](docs/Allocation.md)
 - [AllocationProportion](docs/AllocationProportion.md)
 - [ApiError](docs/ApiError.md)
 - [Asset](docs/Asset.md)
 - [AssetClass](docs/AssetClass.md)
 - [AssetClassAndApy](docs/AssetClassAndApy.md)
 - [AssetClassChange](docs/AssetClassChange.md)
 - [Event](docs/Event.md)
 - [Goal](docs/Goal.md)
 - [GoalAndStatus](docs/GoalAndStatus.md)
 - [GoalMetric](docs/GoalMetric.md)
 - [GoalNewPayload](docs/GoalNewPayload.md)
 - [Insight](docs/Insight.md)
 - [ItemIdResponse](docs/ItemIdResponse.md)
 - [KnownFinancialProduct](docs/KnownFinancialProduct.md)
 - [LinkTokenCreateResponse](docs/LinkTokenCreateResponse.md)
 - [Location](docs/Location.md)
 - [LoginPayload](docs/LoginPayload.md)
 - [Money](docs/Money.md)
 - [MongoObjectID](docs/MongoObjectID.md)
 - [PlaidJWT](docs/PlaidJWT.md)
 - [Plan](docs/Plan.md)
 - [PlanNewPayload](docs/PlanNewPayload.md)
 - [PlanResponse](docs/PlanResponse.md)
 - [PlanUpdatePayload](docs/PlanUpdatePayload.md)
 - [PublicTokenExchangeRequest](docs/PublicTokenExchangeRequest.md)
 - [Ranking](docs/Ranking.md)
 - [Recurring](docs/Recurring.md)
 - [RecurringNewPayload](docs/RecurringNewPayload.md)
 - [SetAccountAsHiddenPayload](docs/SetAccountAsHiddenPayload.md)
 - [SignupPayload](docs/SignupPayload.md)
 - [Snapshot](docs/Snapshot.md)
 - [TimeInterval](docs/TimeInterval.md)
 - [TimePeriod](docs/TimePeriod.md)
 - [TimeSeriesEntry](docs/TimeSeriesEntry.md)
 - [TimeSeriesResponse](docs/TimeSeriesResponse.md)
 - [UpdateUserRequest](docs/UpdateUserRequest.md)
 - [User](docs/User.md)
 - [ValidateUserPayload](docs/ValidateUserPayload.md)


## Documentation For Authorization


## sidCookie

- **Type**: API key
- **API key parameter name**: finch-sid
- **Location**: 


## Author



