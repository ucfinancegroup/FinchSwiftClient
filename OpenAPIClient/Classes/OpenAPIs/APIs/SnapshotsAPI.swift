//
// SnapshotsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class SnapshotsAPI {
    /**
     Get all a user's snapshots
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSnapshots(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Snapshot?,_ error: Error?) -> Void)) {
        getSnapshotsWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get all a user's snapshots
     - GET /snapshots
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - returns: RequestBuilder<Snapshot> 
     */
    open class func getSnapshotsWithRequestBuilder() -> RequestBuilder<Snapshot> {
        let path = "/snapshots"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Snapshot>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
