# LeaderboardAPI

All URIs are relative to *https://localhost:8888/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLeaderboard**](LeaderboardAPI.md#getleaderboard) | **GET** /leaderboard/{type} | Get a leaderboard


# **getLeaderboard**
```swift
    open class func getLeaderboard(type: ModelType_getLeaderboard, completion: @escaping (_ data: LeaderboardResponse?, _ error: Error?) -> Void)
```

Get a leaderboard

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let type = "type_example" // String | Which leaderboard to get

// Get a leaderboard
LeaderboardAPI.getLeaderboard(type: type) { (response, error) in
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
 **type** | **String** | Which leaderboard to get | 

### Return type

[**LeaderboardResponse**](LeaderboardResponse.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

