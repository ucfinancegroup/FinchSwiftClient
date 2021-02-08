# InsightsAPI

All URIs are relative to *https://finchapp.eastus.cloudapp.azure.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dismissInsight**](InsightsAPI.md#dismissinsight) | **PUT** /insight/{id}/dismiss | Dismiss an insight
[**getInsightExamples**](InsightsAPI.md#getinsightexamples) | **GET** /insights/examples | Get example insights
[**getInsights**](InsightsAPI.md#getinsights) | **GET** /insights | Get all a user&#39;s (non-dismissed) insights


# **dismissInsight**
```swift
    open class func dismissInsight(id: String, completion: @escaping (_ data: Insight?, _ error: Error?) -> Void)
```

Dismiss an insight

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | Numeric ID of the Insight to dismiss

// Dismiss an insight
InsightsAPI.dismissInsight(id: id) { (response, error) in
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
 **id** | **String** | Numeric ID of the Insight to dismiss | 

### Return type

[**Insight**](Insight.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInsightExamples**
```swift
    open class func getInsightExamples(completion: @escaping (_ data: [Insight]?, _ error: Error?) -> Void)
```

Get example insights

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get example insights
InsightsAPI.getInsightExamples() { (response, error) in
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

[**[Insight]**](Insight.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInsights**
```swift
    open class func getInsights(completion: @escaping (_ data: [Insight]?, _ error: Error?) -> Void)
```

Get all a user's (non-dismissed) insights

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get all a user's (non-dismissed) insights
InsightsAPI.getInsights() { (response, error) in
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

[**[Insight]**](Insight.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

