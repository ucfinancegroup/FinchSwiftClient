# AssetClassesAPI

All URIs are relative to *https://localhost:8888/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAssetClasses**](AssetClassesAPI.md#getassetclasses) | **GET** /asset_classes | Gets list of asset classes


# **getAssetClasses**
```swift
    open class func getAssetClasses(completion: @escaping (_ data: [AssetClassAndApy]?, _ error: Error?) -> Void)
```

Gets list of asset classes

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Gets list of asset classes
AssetClassesAPI.getAssetClasses() { (response, error) in
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

[**[AssetClassAndApy]**](AssetClassAndApy.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

