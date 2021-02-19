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
     
     - parameter days: (path) Number of days in the future to generate timeseries data for 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTimeseries(days: Double, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: TimeSeriesResponse?,_ error: Error?) -> Void)) {
        getTimeseriesWithRequestBuilder(days: days).execute(apiResponseQueue) { result -> Void in
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
     - GET /timeseries/{days}
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - parameter days: (path) Number of days in the future to generate timeseries data for 
     - returns: RequestBuilder<TimeSeriesResponse> 
     */
    open class func getTimeseriesWithRequestBuilder(days: Double) -> RequestBuilder<TimeSeriesResponse> {
        var path = "/timeseries/{days}"
        let daysPreEscape = "\(APIHelper.mapValueToPathItem(days))"
        let daysPostEscape = daysPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{days}", with: daysPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<TimeSeriesResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get an example timeseries
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTimeseriesExample(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: TimeSeriesResponse?,_ error: Error?) -> Void)) {
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
     - returns: RequestBuilder<TimeSeriesResponse> 
     */
    open class func getTimeseriesExampleWithRequestBuilder() -> RequestBuilder<TimeSeriesResponse> {
        let path = "/timeseries/example"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<TimeSeriesResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get timeseries with 365 future days generated
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTimeseriesYear(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: TimeSeriesResponse?,_ error: Error?) -> Void)) {
        getTimeseriesYearWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get timeseries with 365 future days generated
     - GET /timeseries
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - returns: RequestBuilder<TimeSeriesResponse> 
     */
    open class func getTimeseriesYearWithRequestBuilder() -> RequestBuilder<TimeSeriesResponse> {
        let path = "/timeseries"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<TimeSeriesResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
