# LeaderboardAPI

All URIs are relative to *https://finchapp.eastus.cloudapp.azure.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLeaderboard**](LeaderboardAPI.md#getleaderboard) | **GET** /leaderboard/{type} | Get a leaderboard


# **getLeaderboard**
```swift
    open class func getLeaderboard(type: BoardType, completion: @escaping (_ data: Ranking?, _ error: Error?) -> Void)
```

Get a leaderboard

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let type = BoardType() // BoardType | Which leaderboard to get

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
 **type** | [**BoardType**](.md) | Which leaderboard to get | 

### Return type

[**Ranking**](Ranking.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

