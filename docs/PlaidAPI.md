# PlaidAPI

All URIs are relative to *https://localhost:8888*

Method | HTTP request | Description
------------- | ------------- | -------------
[**plaidLink**](PlaidAPI.md#plaidlink) | **POST** /api/plaid/link_token | to request link token for PlaidLink
[**plaidLinkAccess**](PlaidAPI.md#plaidlinkaccess) | **POST** /api/plaid/public_token_exchange | For after a user does PlaidLink thru client
[**plaidWebhook**](PlaidAPI.md#plaidwebhook) | **POST** /api/plaid/webhook | Where Plaid sends updates about items, transactions, etc https://plaid.com/docs/api/webhooks/


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

# **plaidWebhook**
```swift
    open class func plaidWebhook(plaidVerification: PlaidJWT? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Where Plaid sends updates about items, transactions, etc https://plaid.com/docs/api/webhooks/

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let plaidVerification = PlaidJWT(alg: "alg_example", kid: "kid_example", typ: "typ_example") // PlaidJWT |  (optional)

// Where Plaid sends updates about items, transactions, etc https://plaid.com/docs/api/webhooks/
PlaidAPI.plaidWebhook(plaidVerification: plaidVerification) { (response, error) in
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
 **plaidVerification** | [**PlaidJWT**](.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

