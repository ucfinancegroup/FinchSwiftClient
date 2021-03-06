# ValidationAPI

All URIs are relative to *https://localhost:8888/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**validateUser**](ValidationAPI.md#validateuser) | **POST** /validate/user | This route lets our clients perform step-by-step signups.


# **validateUser**
```swift
    open class func validateUser(validateUserPayload: ValidateUserPayload, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

This route lets our clients perform step-by-step signups.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let validateUserPayload = ValidateUserPayload(field: "field_example", content: "content_example") // ValidateUserPayload | 

// This route lets our clients perform step-by-step signups.
ValidationAPI.validateUser(validateUserPayload: validateUserPayload) { (response, error) in
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
 **validateUserPayload** | [**ValidateUserPayload**](ValidateUserPayload.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

