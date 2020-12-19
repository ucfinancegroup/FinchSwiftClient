# GoalAPI

All URIs are relative to *https://localhost:8888*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteGoal**](GoalAPI.md#deletegoal) | **DELETE** /api/goal/{id} | Delete one specific goal by id
[**getGoal**](GoalAPI.md#getgoal) | **GET** /api/goal/{id} | Get one specific goal by id
[**getGoals**](GoalAPI.md#getgoals) | **GET** /api/goals | Get all of a user&#39;s goals
[**newGoal**](GoalAPI.md#newgoal) | **POST** /api/goal/new | Creates a new goal for the user
[**updateGoal**](GoalAPI.md#updategoal) | **PUT** /api/goal/{id} | Update one specific goal by id


# **deleteGoal**
```swift
    open class func deleteGoal(id: Int, completion: @escaping (_ data: Goal?, _ error: Error?) -> Void)
```

Delete one specific goal by id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | Numeric ID of the Goal to delete

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
 **id** | **Int** | Numeric ID of the Goal to delete | 

### Return type

[**Goal**](Goal.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGoal**
```swift
    open class func getGoal(id: Int, completion: @escaping (_ data: Goal?, _ error: Error?) -> Void)
```

Get one specific goal by id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | Numeric ID of the Goal to get

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
 **id** | **Int** | Numeric ID of the Goal to get | 

### Return type

[**Goal**](Goal.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGoals**
```swift
    open class func getGoals(completion: @escaping (_ data: [Goal]?, _ error: Error?) -> Void)
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

[**[Goal]**](Goal.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newGoal**
```swift
    open class func newGoal(goalNewPayload: GoalNewPayload, completion: @escaping (_ data: Goal?, _ error: Error?) -> Void)
```

Creates a new goal for the user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let goalNewPayload = GoalNewPayload(name: "name_example", period: TimePeriod(start: 123, end: 123), threshold: 123, goalSide: "goalSide_example") // GoalNewPayload | 

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

[**Goal**](Goal.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGoal**
```swift
    open class func updateGoal(id: Int, completion: @escaping (_ data: Goal?, _ error: Error?) -> Void)
```

Update one specific goal by id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | Numeric ID of the Goal to update

// Update one specific goal by id
GoalAPI.updateGoal(id: id) { (response, error) in
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
 **id** | **Int** | Numeric ID of the Goal to update | 

### Return type

[**Goal**](Goal.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

