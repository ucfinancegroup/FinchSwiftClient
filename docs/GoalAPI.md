# GoalAPI

All URIs are relative to *https://finchapp.eastus.cloudapp.azure.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteGoal**](GoalAPI.md#deletegoal) | **DELETE** /goal/{id} | Delete one specific goal by id
[**getGoal**](GoalAPI.md#getgoal) | **GET** /goal/{id} | Get one specific goal by id
[**getGoalExamples**](GoalAPI.md#getgoalexamples) | **GET** /goal/examples | Get example Goals
[**getGoals**](GoalAPI.md#getgoals) | **GET** /goals | Get all of a user&#39;s goals
[**newGoal**](GoalAPI.md#newgoal) | **POST** /goal/new | Creates a new goal for the user
[**updateGoal**](GoalAPI.md#updategoal) | **PUT** /goal/{id} | Update one specific goal by id


# **deleteGoal**
```swift
    open class func deleteGoal(id: String, completion: @escaping (_ data: GoalAndStatus?, _ error: Error?) -> Void)
```

Delete one specific goal by id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | Numeric ID of the Goal to delete

// Delete one specific goal by id
GoalAPI.deleteGoal(id: id) { (response, error) in
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
 **id** | **String** | Numeric ID of the Goal to delete | 

### Return type

[**GoalAndStatus**](GoalAndStatus.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGoal**
```swift
    open class func getGoal(id: String, completion: @escaping (_ data: GoalAndStatus?, _ error: Error?) -> Void)
```

Get one specific goal by id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | Numeric ID of the Goal to get

// Get one specific goal by id
GoalAPI.getGoal(id: id) { (response, error) in
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
 **id** | **String** | Numeric ID of the Goal to get | 

### Return type

[**GoalAndStatus**](GoalAndStatus.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGoalExamples**
```swift
    open class func getGoalExamples(completion: @escaping (_ data: [GoalNewPayload]?, _ error: Error?) -> Void)
```

Get example Goals

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get example Goals
GoalAPI.getGoalExamples() { (response, error) in
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

[**[GoalNewPayload]**](GoalNewPayload.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGoals**
```swift
    open class func getGoals(completion: @escaping (_ data: [GoalAndStatus]?, _ error: Error?) -> Void)
```

Get all of a user's goals

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get all of a user's goals
GoalAPI.getGoals() { (response, error) in
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

[**[GoalAndStatus]**](GoalAndStatus.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newGoal**
```swift
    open class func newGoal(goalNewPayload: GoalNewPayload, completion: @escaping (_ data: GoalAndStatus?, _ error: Error?) -> Void)
```

Creates a new goal for the user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let goalNewPayload = GoalNewPayload(name: "name_example", start: 123, end: 123, threshold: 123, metric: GoalMetric()) // GoalNewPayload | 

// Creates a new goal for the user
GoalAPI.newGoal(goalNewPayload: goalNewPayload) { (response, error) in
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
 **goalNewPayload** | [**GoalNewPayload**](GoalNewPayload.md) |  | 

### Return type

[**GoalAndStatus**](GoalAndStatus.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGoal**
```swift
    open class func updateGoal(id: String, goalNewPayload: GoalNewPayload, completion: @escaping (_ data: GoalAndStatus?, _ error: Error?) -> Void)
```

Update one specific goal by id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | Numeric ID of the Goal to update
let goalNewPayload = GoalNewPayload(name: "name_example", start: 123, end: 123, threshold: 123, metric: GoalMetric()) // GoalNewPayload | 

// Update one specific goal by id
GoalAPI.updateGoal(id: id, goalNewPayload: goalNewPayload) { (response, error) in
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
 **id** | **String** | Numeric ID of the Goal to update | 
 **goalNewPayload** | [**GoalNewPayload**](GoalNewPayload.md) |  | 

### Return type

[**GoalAndStatus**](GoalAndStatus.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

