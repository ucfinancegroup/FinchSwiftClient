//
// GoalAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class GoalAPI {
    /**
     Delete one specific goal by id
     
     - parameter id: (path) Numeric ID of the Goal to delete 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteGoal(id: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GoalAndStatus?,_ error: Error?) -> Void)) {
        deleteGoalWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete one specific goal by id
     - DELETE /goal/{id}
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - parameter id: (path) Numeric ID of the Goal to delete 
     - returns: RequestBuilder<GoalAndStatus> 
     */
    open class func deleteGoalWithRequestBuilder(id: String) -> RequestBuilder<GoalAndStatus> {
        var path = "/goal/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<GoalAndStatus>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get one specific goal by id
     
     - parameter id: (path) Numeric ID of the Goal to get 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGoal(id: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GoalAndStatus?,_ error: Error?) -> Void)) {
        getGoalWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get one specific goal by id
     - GET /goal/{id}
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - parameter id: (path) Numeric ID of the Goal to get 
     - returns: RequestBuilder<GoalAndStatus> 
     */
    open class func getGoalWithRequestBuilder(id: String) -> RequestBuilder<GoalAndStatus> {
        var path = "/goal/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<GoalAndStatus>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get example Goals
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGoalExamples(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [GoalNewPayload]?,_ error: Error?) -> Void)) {
        getGoalExamplesWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get example Goals
     - GET /goal/examples
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - returns: RequestBuilder<[GoalNewPayload]> 
     */
    open class func getGoalExamplesWithRequestBuilder() -> RequestBuilder<[GoalNewPayload]> {
        let path = "/goal/examples"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[GoalNewPayload]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get all of a user's goals
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGoals(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [GoalAndStatus]?,_ error: Error?) -> Void)) {
        getGoalsWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get all of a user's goals
     - GET /goals
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - returns: RequestBuilder<[GoalAndStatus]> 
     */
    open class func getGoalsWithRequestBuilder() -> RequestBuilder<[GoalAndStatus]> {
        let path = "/goals"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[GoalAndStatus]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Creates a new goal for the user
     
     - parameter goalNewPayload: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func newGoal(goalNewPayload: GoalNewPayload, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GoalAndStatus?,_ error: Error?) -> Void)) {
        newGoalWithRequestBuilder(goalNewPayload: goalNewPayload).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Creates a new goal for the user
     - POST /goal/new
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - parameter goalNewPayload: (body)  
     - returns: RequestBuilder<GoalAndStatus> 
     */
    open class func newGoalWithRequestBuilder(goalNewPayload: GoalNewPayload) -> RequestBuilder<GoalAndStatus> {
        let path = "/goal/new"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: goalNewPayload)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<GoalAndStatus>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update one specific goal by id
     
     - parameter id: (path) Numeric ID of the Goal to update 
     - parameter goalNewPayload: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateGoal(id: String, goalNewPayload: GoalNewPayload, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GoalAndStatus?,_ error: Error?) -> Void)) {
        updateGoalWithRequestBuilder(id: id, goalNewPayload: goalNewPayload).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update one specific goal by id
     - PUT /goal/{id}
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - parameter id: (path) Numeric ID of the Goal to update 
     - parameter goalNewPayload: (body)  
     - returns: RequestBuilder<GoalAndStatus> 
     */
    open class func updateGoalWithRequestBuilder(id: String, goalNewPayload: GoalNewPayload) -> RequestBuilder<GoalAndStatus> {
        var path = "/goal/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: goalNewPayload)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<GoalAndStatus>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
