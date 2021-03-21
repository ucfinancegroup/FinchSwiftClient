//
// LeaderboardAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class LeaderboardAPI {
    /**
     * enum for parameter type
     */
    public enum ModelType_getLeaderboard: String, CaseIterable {
        case savings = "savings"
        case spending = "spending"
        case income = "income"
    }

    /**
     Get a leaderboard
     
     - parameter type: (path) Which leaderboard to get 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLeaderboard(type: ModelType_getLeaderboard, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Ranking?, _ error: Error?) -> Void)) {
        getLeaderboardWithRequestBuilder(type: type).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get a leaderboard
     - GET /leaderboard/{type}
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - parameter type: (path) Which leaderboard to get 
     - returns: RequestBuilder<Ranking> 
     */
    open class func getLeaderboardWithRequestBuilder(type: ModelType_getLeaderboard) -> RequestBuilder<Ranking> {
        var path = "/leaderboard/{type}"
        let typePreEscape = "\(type.rawValue)"
        let typePostEscape = typePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{type}", with: typePostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Ranking>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
