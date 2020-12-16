//
// PlaidAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class PlaidAPI {
    /**
     to request link token for PlaidLink
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func plaidLink(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: LinkTokenCreateResponse?,_ error: Error?) -> Void)) {
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
     - POST /api/plaid/link_token
     - API Key:
       - type: apiKey sid 
       - name: sidCookie
     - API Key:
       - type: apiKey user_id 
       - name: userIdCookie
     - returns: RequestBuilder<LinkTokenCreateResponse> 
     */
    open class func plaidLinkWithRequestBuilder() -> RequestBuilder<LinkTokenCreateResponse> {
        let path = "/api/plaid/link_token"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<LinkTokenCreateResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     For after a user does PlaidLink thru client
     
     - parameter publicTokenExchangeRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func plaidLinkAccess(publicTokenExchangeRequest: PublicTokenExchangeRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ItemIdResponse?,_ error: Error?) -> Void)) {
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
     - POST /api/plaid/public_token_exchange
     - API Key:
       - type: apiKey sid 
       - name: sidCookie
     - API Key:
       - type: apiKey user_id 
       - name: userIdCookie
     - parameter publicTokenExchangeRequest: (body)  
     - returns: RequestBuilder<ItemIdResponse> 
     */
    open class func plaidLinkAccessWithRequestBuilder(publicTokenExchangeRequest: PublicTokenExchangeRequest) -> RequestBuilder<ItemIdResponse> {
        let path = "/api/plaid/public_token_exchange"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: publicTokenExchangeRequest)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ItemIdResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
