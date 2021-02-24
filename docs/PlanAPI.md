# PlanAPI

All URIs are relative to *https://finchapp.eastus.cloudapp.azure.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePlan**](PlanAPI.md#deleteplan) | **DELETE** /plan/{id} | Delete one specific plan by id
[**getPlan**](PlanAPI.md#getplan) | **GET** /plan | Get one specific plan and generate timeseries for 365 days
[**getPlanWithDays**](PlanAPI.md#getplanwithdays) | **GET** /plan/{days} | Get one specific plan and generate timeseries for specified number of days
[**getPlans**](PlanAPI.md#getplans) | **GET** /plans | Get all of a user&#39;s plans
[**newPlan**](PlanAPI.md#newplan) | **POST** /plan/new | Creates a new plan for the user and generate timeseries for 365 days
[**newPlanWithDays**](PlanAPI.md#newplanwithdays) | **POST** /plan/new/{days} | Creates a new plan for the user and generate timeseries for specified number of days


# **deletePlan**
```swift
    open class func deletePlan(id: String, completion: @escaping (_ data: Plan?, _ error: Error?) -> Void)
```

Delete one specific plan by id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | Numeric ID of the Plan to delete

// Delete one specific plan by id
PlanAPI.deletePlan(id: id) { (response, error) in
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
 **id** | **String** | Numeric ID of the Plan to delete | 

### Return type

[**Plan**](Plan.md)

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

Get one specific plan and generate timeseries for 365 days

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get one specific plan and generate timeseries for 365 days
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

Get one specific plan and generate timeseries for specified number of days

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let days = 987 // Int | Number of days to generate timeseries for

// Get one specific plan and generate timeseries for specified number of days
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

# **getPlans**
```swift
    open class func getPlans(completion: @escaping (_ data: [Plan]?, _ error: Error?) -> Void)
```

Get all of a user's plans

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get all of a user's plans
PlanAPI.getPlans() { (response, error) in
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

[**[Plan]**](Plan.md)

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

let planNewPayload = PlanNewPayload(name: "name_example", recurrings: [Recurring(id: MongoObjectID(oid: "oid_example"), name: "name_example", start: 123, end: 123, principal: 123, amount: 123, interest: 123, frequency: TimeInterval(typ: "typ_example", content: 123))], allocations: [Allocation(description: "description_example", date: 123, schema: [AllocationChange(asset: Asset(name: "name_example", _class: AssetClass(typ: "typ_example", content: "content_example"), annualizedPerformance: 123), change: 123)])], events: [Event(name: "name_example", start: 123, transforms: [Transform(trigger: TimeInterval(typ: "typ_example", content: 123), changes: [AssetChange(asset: Asset(name: "name_example", _class: AssetClass(typ: "typ_example", content: "content_example"), annualizedPerformance: 123), change: 123)])])]) // PlanNewPayload | 

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
let planNewPayload = PlanNewPayload(name: "name_example", recurrings: [Recurring(id: MongoObjectID(oid: "oid_example"), name: "name_example", start: 123, end: 123, principal: 123, amount: 123, interest: 123, frequency: TimeInterval(typ: "typ_example", content: 123))], allocations: [Allocation(description: "description_example", date: 123, schema: [AllocationChange(asset: Asset(name: "name_example", _class: AssetClass(typ: "typ_example", content: "content_example"), annualizedPerformance: 123), change: 123)])], events: [Event(name: "name_example", start: 123, transforms: [Transform(trigger: TimeInterval(typ: "typ_example", content: 123), changes: [AssetChange(asset: Asset(name: "name_example", _class: AssetClass(typ: "typ_example", content: "content_example"), annualizedPerformance: 123), change: 123)])])]) // PlanNewPayload | 

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

