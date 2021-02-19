# UserAPI

All URIs are relative to *https://finchapp.eastus.cloudapp.azure.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**loginUser**](UserAPI.md#loginuser) | **POST** /login | Log in a user
[**logoutUser**](UserAPI.md#logoutuser) | **POST** /logout | Log out a user
[**signupUser**](UserAPI.md#signupuser) | **POST** /signup | Sign up a user


# **loginUser**
```swift
    open class func loginUser(loginPayload: LoginPayload, completion: @escaping (_ data: User?, _ error: Error?) -> Void)
```

Log in a user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let loginPayload = LoginPayload(email: "email_example", password: "password_example") // LoginPayload | 

// Log in a user
UserAPI.loginUser(loginPayload: loginPayload) { (response, error) in
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
 **loginPayload** | [**LoginPayload**](LoginPayload.md) |  | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logoutUser**
```swift
    open class func logoutUser(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Log out a user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Log out a user
UserAPI.logoutUser() { (response, error) in
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

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signupUser**
```swift
    open class func signupUser(signupPayload: SignupPayload, completion: @escaping (_ data: User?, _ error: Error?) -> Void)
```

Sign up a user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let signupPayload = SignupPayload(email: "email_example", password: "password_example", firstName: "firstName_example", lastName: "lastName_example", income: 123, netWorth: 123, location: Location(hasLocation: false, lat: 123, lon: 123), birthday: Date()) // SignupPayload | 

// Sign up a user
UserAPI.signupUser(signupPayload: signupPayload) { (response, error) in
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
 **signupPayload** | [**SignupPayload**](SignupPayload.md) |  | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

