# TimeseriesAPI

All URIs are relative to *https://finchapp.eastus.cloudapp.azure.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTimeseries**](TimeseriesAPI.md#gettimeseries) | **GET** /timeseries | Get a user&#39;s projection timeseries
[**getTimeseriesExample**](TimeseriesAPI.md#gettimeseriesexample) | **GET** /timeseries/example | Get an example timeseries


# **getTimeseries**
```swift
    open class func getTimeseries(completion: @escaping (_ data: TimeSeriesResponse?, _ error: Error?) -> Void)
```

Get a user's projection timeseries

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get a user's projection timeseries
TimeseriesAPI.getTimeseries() { (response, error) in
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

[**TimeSeriesResponse**](TimeSeriesResponse.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTimeseriesExample**
```swift
    open class func getTimeseriesExample(completion: @escaping (_ data: TimeSeriesResponse?, _ error: Error?) -> Void)
```

Get an example timeseries

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get an example timeseries
TimeseriesAPI.getTimeseriesExample() { (response, error) in
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

[**TimeSeriesResponse**](TimeSeriesResponse.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

