# PlaidAPI

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAccount**](PlaidAPI.md#deleteaccount) | **DELETE** /plaid/accounts/{id} | Delete account with given item_id
[**getAccounts**](PlaidAPI.md#getaccounts) | **GET** /plaid/accounts/{allOrUnhidden} | Get all of user&#39;s connected accounts
[**plaidLink**](PlaidAPI.md#plaidlink) | **POST** /plaid/link_token | to request link token for PlaidLink
[**plaidLinkAccess**](PlaidAPI.md#plaidlinkaccess) | **POST** /plaid/public_token_exchange | For after a user does PlaidLink thru client
[**setAccountAsHidden**](PlaidAPI.md#setaccountashidden) | **PUT** /plaid/accounts/hide | Hides or unhides an account


# **deleteAccount**
```swift
    open class func deleteAccount(id: String, completion: @escaping (_ data: ItemIdResponse?, _ error: Error?) -> Void)
```

Delete account with given item_id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | Item ID of the account to delete

// Delete account with given item_id
PlaidAPI.deleteAccount(id: id) { (response, error) in
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
 **id** | **String** | Item ID of the account to delete | 

### Return type

[**ItemIdResponse**](ItemIdResponse.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccounts**
```swift
    open class func getAccounts(allOrUnhidden: AllOrUnhidden_getAccounts, completion: @escaping (_ data: AccountsResponse?, _ error: Error?) -> Void)
```

Get all of user's connected accounts

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let allOrUnhidden = "allOrUnhidden_example" // String | Whether to return all accounts or only ones that are not hidden

// Get all of user's connected accounts
PlaidAPI.getAccounts(allOrUnhidden: allOrUnhidden) { (response, error) in
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
 **allOrUnhidden** | **String** | Whether to return all accounts or only ones that are not hidden | 

### Return type

[**AccountsResponse**](AccountsResponse.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

# **setAccountAsHidden**
```swift
    open class func setAccountAsHidden(setAccountAsHiddenPayload: SetAccountAsHiddenPayload, completion: @escaping (_ data: AccountsResponse?, _ error: Error?) -> Void)
```

Hides or unhides an account

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let setAccountAsHiddenPayload = SetAccountAsHiddenPayload(itemId: "itemId_example", accountId: "accountId_example", hideOrNot: false) // SetAccountAsHiddenPayload | 

// Hides or unhides an account
PlaidAPI.setAccountAsHidden(setAccountAsHiddenPayload: setAccountAsHiddenPayload) { (response, error) in
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
 **setAccountAsHiddenPayload** | [**SetAccountAsHiddenPayload**](SetAccountAsHiddenPayload.md) |  | 

### Return type

[**AccountsResponse**](AccountsResponse.md)

### Authorization

[sidCookie](../README.md#sidCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

