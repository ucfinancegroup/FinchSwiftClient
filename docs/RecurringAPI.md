# RecurringAPI

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteRecurring**](RecurringAPI.md#deleterecurring) | **DELETE** /recurring/{id} | Delete one specific recurring by id
[**getRecurring**](RecurringAPI.md#getrecurring) | **GET** /recurring/{id} | Get one specific recurring by id
[**getRecurringExamples**](RecurringAPI.md#getrecurringexamples) | **GET** /recurring/examples | Get example Recurrings
[**getRecurrings**](RecurringAPI.md#getrecurrings) | **GET** /recurrings | Get all of a user&#39;s recurrings
[**newRecurring**](RecurringAPI.md#newrecurring) | **POST** /recurring/new | Creates a new recurring for the user
[**updateRecurring**](RecurringAPI.md#updaterecurring) | **PUT** /recurring/{id} | Update one specific recurring by id


# **deleteRecurring**
```swift
    open class func deleteRecurring(id: String, completion: @escaping (_ data: Recurring?, _ error: Error?) -> Void)
```

Delete one specific recurring by id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | Numeric ID of the Recurring to delete

// Delete one specific recurring by id
RecurringAPI.deleteRecurring(id: id) { (response, error) in
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
 **id** | **String** | Numeric ID of the Recurring to delete | 

### Return type

[**Recurring**](Recurring.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecurring**
```swift
    open class func getRecurring(id: String, completion: @escaping (_ data: Recurring?, _ error: Error?) -> Void)
```

Get one specific recurring by id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | Numeric ID of the Recurring to get

// Get one specific recurring by id
RecurringAPI.getRecurring(id: id) { (response, error) in
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
 **id** | **String** | Numeric ID of the Recurring to get | 

### Return type

[**Recurring**](Recurring.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecurringExamples**
```swift
    open class func getRecurringExamples(completion: @escaping (_ data: [RecurringNewPayload]?, _ error: Error?) -> Void)
```

Get example Recurrings

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get example Recurrings
RecurringAPI.getRecurringExamples() { (response, error) in
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

[**[RecurringNewPayload]**](RecurringNewPayload.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecurrings**
```swift
    open class func getRecurrings(completion: @escaping (_ data: [Recurring]?, _ error: Error?) -> Void)
```

Get all of a user's recurrings

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get all of a user's recurrings
RecurringAPI.getRecurrings() { (response, error) in
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

[**[Recurring]**](Recurring.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newRecurring**
```swift
    open class func newRecurring(recurringNewPayload: RecurringNewPayload, completion: @escaping (_ data: Recurring?, _ error: Error?) -> Void)
```

Creates a new recurring for the user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let recurringNewPayload = RecurringNewPayload(name: "name_example", start: 123, end: 123, principal: 123, amount: 123, interest: 123, frequency: TimeInterval(typ: "typ_example", content: 123)) // RecurringNewPayload | 

// Creates a new recurring for the user
RecurringAPI.newRecurring(recurringNewPayload: recurringNewPayload) { (response, error) in
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
 **recurringNewPayload** | [**RecurringNewPayload**](RecurringNewPayload.md) |  | 

### Return type

[**Recurring**](Recurring.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRecurring**
```swift
    open class func updateRecurring(id: String, recurringNewPayload: RecurringNewPayload, completion: @escaping (_ data: Recurring?, _ error: Error?) -> Void)
```

Update one specific recurring by id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | Numeric ID of the Recurring to update
let recurringNewPayload = RecurringNewPayload(name: "name_example", start: 123, end: 123, principal: 123, amount: 123, interest: 123, frequency: TimeInterval(typ: "typ_example", content: 123)) // RecurringNewPayload | 

// Update one specific recurring by id
RecurringAPI.updateRecurring(id: id, recurringNewPayload: recurringNewPayload) { (response, error) in
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
 **id** | **String** | Numeric ID of the Recurring to update | 
 **recurringNewPayload** | [**RecurringNewPayload**](RecurringNewPayload.md) |  | 

### Return type

[**Recurring**](Recurring.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

