# SnapshotsAPI

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSnapshots**](SnapshotsAPI.md#getsnapshots) | **GET** /snapshots | Get all a user&#39;s snapshots


# **getSnapshots**
```swift
    open class func getSnapshots(completion: @escaping (_ data: Snapshot?, _ error: Error?) -> Void)
```

Get all a user's snapshots

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get all a user's snapshots
SnapshotsAPI.getSnapshots() { (response, error) in
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

[**Snapshot**](Snapshot.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

