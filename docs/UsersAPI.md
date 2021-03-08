# UsersAPI

All URIs are relative to *https://finchapp.eastus.cloudapp.azure.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**registerIOSDevice**](UsersAPI.md#registeriosdevice) | **POST** /registerIOSDevice | This route will be called once a user logs in on an iOS device and route body will contain the URL of the iOS device, this will be stored in the User model.
[**updateUser**](UsersAPI.md#updateuser) | **PUT** /update/user | This route receives a payload with requests to change data of a user


# **registerIOSDevice**
```swift
    open class func registerIOSDevice(completion: @escaping (_ data: ApiError?, _ error: Error?) -> Void)
```

This route will be called once a user logs in on an iOS device and route body will contain the URL of the iOS device, this will be stored in the User model.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// This route will be called once a user logs in on an iOS device and route body will contain the URL of the iOS device, this will be stored in the User model.
UsersAPI.registerIOSDevice() { (response, error) in
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

[**ApiError**](ApiError.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
```swift
    open class func updateUser(updateUserRequest: UpdateUserRequest, completion: @escaping (_ data: User?, _ error: Error?) -> Void)
```

This route receives a payload with requests to change data of a user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateUserRequest = UpdateUserRequest(email: "email_example", password: "password_example", firstName: "firstName_example", lastName: "lastName_example", income: 123, netWorth: 123, location: Location(hasLocation: false, lat: 123, lon: 123), birthday: Date()) // UpdateUserRequest | 

// This route receives a payload with requests to change data of a user
UsersAPI.updateUser(updateUserRequest: updateUserRequest) { (response, error) in
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
 **updateUserRequest** | [**UpdateUserRequest**](UpdateUserRequest.md) |  | 

### Return type

[**User**](User.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

