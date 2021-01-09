# PlaidAPI

All URIs are relative to *https://finchapp.eastus.cloudapp.azure.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**plaidLink**](PlaidAPI.md#plaidlink) | **POST** /plaid/link_token | to request link token for PlaidLink
[**plaidLinkAccess**](PlaidAPI.md#plaidlinkaccess) | **POST** /plaid/public_token_exchange | For after a user does PlaidLink thru client


# **plaidLink**
```swift
    open class func plaidLink(completion: @escaping (_ data: LinkTokenCreateResponse?, _ error: Error?) -> Void)
```

to request link token for PlaidLink

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// to request link token for PlaidLink
PlaidAPI.plaidLink() { (response, error) in
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

[**LinkTokenCreateResponse**](LinkTokenCreateResponse.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **plaidLinkAccess**
```swift
    open class func plaidLinkAccess(publicTokenExchangeRequest: PublicTokenExchangeRequest, completion: @escaping (_ data: ItemIdResponse?, _ error: Error?) -> Void)
```

For after a user does PlaidLink thru client

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let publicTokenExchangeRequest = PublicTokenExchangeRequest(publicToken: "publicToken_example", clientId: "clientId_example", secret: "secret_example") // PublicTokenExchangeRequest | 

// For after a user does PlaidLink thru client
PlaidAPI.plaidLinkAccess(publicTokenExchangeRequest: publicTokenExchangeRequest) { (response, error) in
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
 **publicTokenExchangeRequest** | [**PublicTokenExchangeRequest**](PublicTokenExchangeRequest.md) |  | 

### Return type

[**ItemIdResponse**](ItemIdResponse.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

