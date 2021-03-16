# EventAPI

All URIs are relative to *https://finchapp.eastus.cloudapp.azure.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEventExamples**](EventAPI.md#geteventexamples) | **GET** /event/examples | Get example events


# **getEventExamples**
```swift
    open class func getEventExamples(completion: @escaping (_ data: [Event]?, _ error: Error?) -> Void)
```

Get example events

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get example events
EventAPI.getEventExamples() { (response, error) in
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

[**[Event]**](Event.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

