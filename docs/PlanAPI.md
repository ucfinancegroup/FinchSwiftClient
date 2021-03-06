# PlanAPI

All URIs are relative to *https://localhost:8888/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePlan**](PlanAPI.md#deleteplan) | **DELETE** /plan | Delete user&#39;s plan
[**getPlaidPlan**](PlanAPI.md#getplaidplan) | **GET** /plan/plaid | Get plaid plan and generate timeseries for 365 days
[**getPlaidPlanWithDays**](PlanAPI.md#getplaidplanwithdays) | **GET** /plan/plaid/{days} | Get plaid plan and generate timeseries for specified number of days
[**getPlan**](PlanAPI.md#getplan) | **GET** /plan | Get plan and generate timeseries for 365 days
[**getPlanWithDays**](PlanAPI.md#getplanwithdays) | **GET** /plan/{days} | Get plan and generate timeseries for specified number of days
[**newPlan**](PlanAPI.md#newplan) | **POST** /plan | Creates a new plan for the user and generate timeseries for 365 days
[**newPlanWithDays**](PlanAPI.md#newplanwithdays) | **POST** /plan/{days} | Creates a new plan for the user and generate timeseries for specified number of days
[**updatePlan**](PlanAPI.md#updateplan) | **PUT** /plan | Update plan and generate timeseries for 365 days
[**updatePlanWithDays**](PlanAPI.md#updateplanwithdays) | **PUT** /plan/{days} | Update plan and generate timeseries for specified number of days


# **deletePlan**
```swift
    open class func deletePlan(completion: @escaping (_ data: Plan?, _ error: Error?) -> Void)
```

Delete user's plan

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Delete user's plan
PlanAPI.deletePlan() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Plan**](Plan.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlaidPlan**
```swift
    open class func getPlaidPlan(completion: @escaping (_ data: PlanResponse?, _ error: Error?) -> Void)
```

Get plaid plan and generate timeseries for 365 days

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get plaid plan and generate timeseries for 365 days
PlanAPI.getPlaidPlan() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PlanResponse**](PlanResponse.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlaidPlanWithDays**
```swift
    open class func getPlaidPlanWithDays(days: Int, completion: @escaping (_ data: PlanResponse?, _ error: Error?) -> Void)
```

Get plaid plan and generate timeseries for specified number of days

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let days = 987 // Int | Number of days to generate timeseries for

// Get plaid plan and generate timeseries for specified number of days
PlanAPI.getPlaidPlanWithDays(days: days) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **days** | **Int** | Number of days to generate timeseries for | 

### Return type

[**PlanResponse**](PlanResponse.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlan**
```swift
    open class func getPlan(completion: @escaping (_ data: PlanResponse?, _ error: Error?) -> Void)
```

Get plan and generate timeseries for 365 days

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get plan and generate timeseries for 365 days
PlanAPI.getPlan() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PlanResponse**](PlanResponse.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlanWithDays**
```swift
    open class func getPlanWithDays(days: Int, completion: @escaping (_ data: PlanResponse?, _ error: Error?) -> Void)
```

Get plan and generate timeseries for specified number of days

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let days = 987 // Int | Number of days to generate timeseries for

// Get plan and generate timeseries for specified number of days
PlanAPI.getPlanWithDays(days: days) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **days** | **Int** | Number of days to generate timeseries for | 

### Return type

[**PlanResponse**](PlanResponse.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newPlan**
```swift
    open class func newPlan(planNewPayload: PlanNewPayload, completion: @escaping (_ data: PlanResponse?, _ error: Error?) -> Void)
```

Creates a new plan for the user and generate timeseries for 365 days

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let planNewPayload = PlanNewPayload(name: "name_example", recurrings: [Recurring(id: MongoObjectID(oid: "oid_example"), name: "name_example", start: 123, end: 123, principal: 123, amount: 123, interest: 123, frequency: TimeInterval(typ: "typ_example", content: 123))], allocations: [Allocation(id: MongoObjectID(oid: "oid_example"), description: "description_example", date: 123, schema: [AllocationProportion(asset: Asset(name: "name_example", _class: AssetClass(typ: "typ_example", content: "content_example"), annualizedPerformance: 123), proportion: 123)])], events: [Event(id: MongoObjectID(oid: "oid_example"), name: "name_example", start: 123, transforms: [Transform(trigger: TimeInterval(typ: "typ_example", content: 123), changes: [AssetChange(asset: Asset(name: "name_example", _class: AssetClass(typ: "typ_example", content: "content_example"), annualizedPerformance: 123), change: 123)])])]) // PlanNewPayload | 

// Creates a new plan for the user and generate timeseries for 365 days
PlanAPI.newPlan(planNewPayload: planNewPayload) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **planNewPayload** | [**PlanNewPayload**](PlanNewPayload.md) |  | 

### Return type

[**PlanResponse**](PlanResponse.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newPlanWithDays**
```swift
    open class func newPlanWithDays(days: Int, planNewPayload: PlanNewPayload, completion: @escaping (_ data: PlanResponse?, _ error: Error?) -> Void)
```

Creates a new plan for the user and generate timeseries for specified number of days

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let days = 987 // Int | Number of days to generate timeseries for
let planNewPayload = PlanNewPayload(name: "name_example", recurrings: [Recurring(id: MongoObjectID(oid: "oid_example"), name: "name_example", start: 123, end: 123, principal: 123, amount: 123, interest: 123, frequency: TimeInterval(typ: "typ_example", content: 123))], allocations: [Allocation(id: MongoObjectID(oid: "oid_example"), description: "description_example", date: 123, schema: [AllocationProportion(asset: Asset(name: "name_example", _class: AssetClass(typ: "typ_example", content: "content_example"), annualizedPerformance: 123), proportion: 123)])], events: [Event(id: MongoObjectID(oid: "oid_example"), name: "name_example", start: 123, transforms: [Transform(trigger: TimeInterval(typ: "typ_example", content: 123), changes: [AssetChange(asset: Asset(name: "name_example", _class: AssetClass(typ: "typ_example", content: "content_example"), annualizedPerformance: 123), change: 123)])])]) // PlanNewPayload | 

// Creates a new plan for the user and generate timeseries for specified number of days
PlanAPI.newPlanWithDays(days: days, planNewPayload: planNewPayload) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **days** | **Int** | Number of days to generate timeseries for | 
 **planNewPayload** | [**PlanNewPayload**](PlanNewPayload.md) |  | 

### Return type

[**PlanResponse**](PlanResponse.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePlan**
```swift
    open class func updatePlan(planUpdatePayload: PlanUpdatePayload, completion: @escaping (_ data: PlanResponse?, _ error: Error?) -> Void)
```

Update plan and generate timeseries for 365 days

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let planUpdatePayload = PlanUpdatePayload(name: "name_example", recurrings: [Recurring(id: MongoObjectID(oid: "oid_example"), name: "name_example", start: 123, end: 123, principal: 123, amount: 123, interest: 123, frequency: TimeInterval(typ: "typ_example", content: 123))], allocations: [Allocation(id: MongoObjectID(oid: "oid_example"), description: "description_example", date: 123, schema: [AllocationProportion(asset: Asset(name: "name_example", _class: AssetClass(typ: "typ_example", content: "content_example"), annualizedPerformance: 123), proportion: 123)])], events: [Event(id: MongoObjectID(oid: "oid_example"), name: "name_example", start: 123, transforms: [Transform(trigger: TimeInterval(typ: "typ_example", content: 123), changes: [AssetChange(asset: Asset(name: "name_example", _class: AssetClass(typ: "typ_example", content: "content_example"), annualizedPerformance: 123), change: 123)])])]) // PlanUpdatePayload | 

// Update plan and generate timeseries for 365 days
PlanAPI.updatePlan(planUpdatePayload: planUpdatePayload) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **planUpdatePayload** | [**PlanUpdatePayload**](PlanUpdatePayload.md) |  | 

### Return type

[**PlanResponse**](PlanResponse.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePlanWithDays**
```swift
    open class func updatePlanWithDays(days: Int, planUpdatePayload: PlanUpdatePayload, completion: @escaping (_ data: PlanResponse?, _ error: Error?) -> Void)
```

Update plan and generate timeseries for specified number of days

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let days = 987 // Int | Number of days to generate timeseries for
let planUpdatePayload = PlanUpdatePayload(name: "name_example", recurrings: [Recurring(id: MongoObjectID(oid: "oid_example"), name: "name_example", start: 123, end: 123, principal: 123, amount: 123, interest: 123, frequency: TimeInterval(typ: "typ_example", content: 123))], allocations: [Allocation(id: MongoObjectID(oid: "oid_example"), description: "description_example", date: 123, schema: [AllocationProportion(asset: Asset(name: "name_example", _class: AssetClass(typ: "typ_example", content: "content_example"), annualizedPerformance: 123), proportion: 123)])], events: [Event(id: MongoObjectID(oid: "oid_example"), name: "name_example", start: 123, transforms: [Transform(trigger: TimeInterval(typ: "typ_example", content: 123), changes: [AssetChange(asset: Asset(name: "name_example", _class: AssetClass(typ: "typ_example", content: "content_example"), annualizedPerformance: 123), change: 123)])])]) // PlanUpdatePayload | 

// Update plan and generate timeseries for specified number of days
PlanAPI.updatePlanWithDays(days: days, planUpdatePayload: planUpdatePayload) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **days** | **Int** | Number of days to generate timeseries for | 
 **planUpdatePayload** | [**PlanUpdatePayload**](PlanUpdatePayload.md) |  | 

### Return type

[**PlanResponse**](PlanResponse.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

