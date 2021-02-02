//
// TimeseriesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class TimeseriesAPI {
    /**
     Get a user's projection timeseries
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTimeseries(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [TimeSeriesEntry]?,_ error: Error?) -> Void)) {
        getTimeseriesWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get a user's projection timeseries
     - GET /timeseries
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - returns: RequestBuilder<[TimeSeriesEntry]> 
     */
    open class func getTimeseriesWithRequestBuilder() -> RequestBuilder<[TimeSeriesEntry]> {
        let path = "/timeseries"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[TimeSeriesEntry]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get an example timeseries
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTimeseriesExample(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [TimeSeriesEntry]?,_ error: Error?) -> Void)) {
        getTimeseriesExampleWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get an example timeseries
     - GET /timeseries/example
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - returns: RequestBuilder<[TimeSeriesEntry]> 
     */
    open class func getTimeseriesExampleWithRequestBuilder() -> RequestBuilder<[TimeSeriesEntry]> {
        let path = "/timeseries/example"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[TimeSeriesEntry]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
