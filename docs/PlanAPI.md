# PlanAPI

All URIs are relative to *https://localhost:8888*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePlan**](PlanAPI.md#deleteplan) | **DELETE** /api/plan/{id} | Delete one specific plan by id
[**getPlan**](PlanAPI.md#getplan) | **GET** /api/plan/{id} | Get one specific plan by id
[**getPlans**](PlanAPI.md#getplans) | **GET** /api/plans | Get all of a user&#39;s plans
[**newPlan**](PlanAPI.md#newplan) | **POST** /api/plan/new | Creates a new plan for the user
[**updatePlan**](PlanAPI.md#updateplan) | **PUT** /api/plan/{id} | Update one specific plan by id


# **deletePlan**
```swift
    open class func deletePlan(id: Int, completion: @escaping (_ data: Plan?, _ error: Error?) -> Void)
```

Delete one specific plan by id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | Numeric ID of the Plan to delete

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
 **id** | **Int** | Numeric ID of the Plan to delete | 

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
    open class func getPlan(id: Int, completion: @escaping (_ data: Plan?, _ error: Error?) -> Void)
```

Get one specific plan by id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | Numeric ID of the Plan to get

// Get one specific plan by id
PlanAPI.getPlan(id: id) { (response, error) in
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
 **id** | **Int** | Numeric ID of the Plan to get | 

### Return type

[**Plan**](Plan.md)

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
    open class func newPlan(planNewPayload: PlanNewPayload, completion: @escaping (_ data: Plan?, _ error: Error?) -> Void)
```

Creates a new plan for the user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let planNewPayload = PlanNewPayload(name: "name_example", recurrings: [Recurring(id: "id_example", name: "name_example", start: 123, end: 123, principal: 123, amount: 123, interest: 123, amountFreq: TimeInterval(typ: "typ_example", content: 123), interestFreq: TimeInterval(typ: "typ_example", content: 123), contributionFreq: TimeInterval(typ: "typ_example", content: 123))], allocations: [Transform(trigger: 123, change: "TODO")], events: [Event(name: "name_example", start: 123, transforms: [Transform(trigger: 123, change: "TODO")])]) // PlanNewPayload | 

// Creates a new plan for the user
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

[**Plan**](Plan.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePlan**
```swift
    open class func updatePlan(id: Int, completion: @escaping (_ data: Plan?, _ error: Error?) -> Void)
```

Update one specific plan by id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | Numeric ID of the Plan to update

// Update one specific plan by id
PlanAPI.updatePlan(id: id) { (response, error) in
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
 **id** | **Int** | Numeric ID of the Plan to update | 

### Return type

[**Plan**](Plan.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

