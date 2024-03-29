//
// PlaidAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class PlaidAPI {
    /**
     Delete account with given item_id
     
     - parameter id: (path) Item ID of the account to delete 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAccount(id: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ItemIdResponse?, _ error: Error?) -> Void)) {
        deleteAccountWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete account with given item_id
     - DELETE /plaid/accounts/{id}
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - parameter id: (path) Item ID of the account to delete 
     - returns: RequestBuilder<ItemIdResponse> 
     */
    open class func deleteAccountWithRequestBuilder(id: String) -> RequestBuilder<ItemIdResponse> {
        var path = "/plaid/accounts/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ItemIdResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     * enum for parameter allOrUnhidden
     */
    public enum AllOrUnhidden_getAccounts: String, CaseIterable {
        case all = "all"
        case unhidden = "unhidden"
    }

    /**
     Get all of user's connected accounts
     
     - parameter allOrUnhidden: (path) Whether to return all accounts or only ones that are not hidden 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAccounts(allOrUnhidden: AllOrUnhidden_getAccounts, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountsResponse?, _ error: Error?) -> Void)) {
        getAccountsWithRequestBuilder(allOrUnhidden: allOrUnhidden).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get all of user's connected accounts
     - GET /plaid/accounts/{allOrUnhidden}
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - parameter allOrUnhidden: (path) Whether to return all accounts or only ones that are not hidden 
     - returns: RequestBuilder<AccountsResponse> 
     */
    open class func getAccountsWithRequestBuilder(allOrUnhidden: AllOrUnhidden_getAccounts) -> RequestBuilder<AccountsResponse> {
        var path = "/plaid/accounts/{allOrUnhidden}"
        let allOrUnhiddenPreEscape = "\(allOrUnhidden.rawValue)"
        let allOrUnhiddenPostEscape = allOrUnhiddenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{allOrUnhidden}", with: allOrUnhiddenPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<AccountsResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     to request link token for PlaidLink
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func plaidLink(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: LinkTokenCreateResponse?, _ error: Error?) -> Void)) {
        plaidLinkWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     to request link token for PlaidLink
     - POST /plaid/link_token
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - returns: RequestBuilder<LinkTokenCreateResponse> 
     */
    open class func plaidLinkWithRequestBuilder() -> RequestBuilder<LinkTokenCreateResponse> {
        let path = "/plaid/link_token"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<LinkTokenCreateResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     For after a user does PlaidLink thru client
     
     - parameter publicTokenExchangeRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func plaidLinkAccess(publicTokenExchangeRequest: PublicTokenExchangeRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ItemIdResponse?, _ error: Error?) -> Void)) {
        plaidLinkAccessWithRequestBuilder(publicTokenExchangeRequest: publicTokenExchangeRequest).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     For after a user does PlaidLink thru client
     - POST /plaid/public_token_exchange
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - parameter publicTokenExchangeRequest: (body)  
     - returns: RequestBuilder<ItemIdResponse> 
     */
    open class func plaidLinkAccessWithRequestBuilder(publicTokenExchangeRequest: PublicTokenExchangeRequest) -> RequestBuilder<ItemIdResponse> {
        let path = "/plaid/public_token_exchange"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: publicTokenExchangeRequest)

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ItemIdResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Hides or unhides an account
     
     - parameter setAccountAsHiddenPayload: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setAccountAsHidden(setAccountAsHiddenPayload: SetAccountAsHiddenPayload, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountsResponse?, _ error: Error?) -> Void)) {
        setAccountAsHiddenWithRequestBuilder(setAccountAsHiddenPayload: setAccountAsHiddenPayload).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Hides or unhides an account
     - PUT /plaid/accounts/hide
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - parameter setAccountAsHiddenPayload: (body)  
     - returns: RequestBuilder<AccountsResponse> 
     */
    open class func setAccountAsHiddenWithRequestBuilder(setAccountAsHiddenPayload: SetAccountAsHiddenPayload) -> RequestBuilder<AccountsResponse> {
        let path = "/plaid/accounts/hide"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: setAccountAsHiddenPayload)

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<AccountsResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
