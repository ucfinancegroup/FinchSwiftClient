//
// EventAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class EventAPI {
    /**
     Get example events
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getEventExamples(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [Event]?, _ error: Error?) -> Void)) {
        getEventExamplesWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get example events
     - GET /event/examples
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - returns: RequestBuilder<[Event]> 
     */
    open class func getEventExamplesWithRequestBuilder() -> RequestBuilder<[Event]> {
        let path = "/event/examples"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[Event]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
