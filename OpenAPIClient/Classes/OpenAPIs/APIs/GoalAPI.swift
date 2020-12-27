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
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteGoal(id: Int, completion: @escaping ((_ data: Goal?,_ error: Error?) -> Void)) {
        deleteGoalWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Delete one specific goal by id
     - DELETE /goal/{id}
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - parameter id: (path) Numeric ID of the Goal to delete 
     - returns: RequestBuilder<Goal> 
     */
    open class func deleteGoalWithRequestBuilder(id: Int) -> RequestBuilder<Goal> {
        var path = "/goal/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Goal>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get one specific goal by id
     
     - parameter id: (path) Numeric ID of the Goal to get 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGoal(id: Int, completion: @escaping ((_ data: Goal?,_ error: Error?) -> Void)) {
        getGoalWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Get one specific goal by id
     - GET /goal/{id}
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - parameter id: (path) Numeric ID of the Goal to get 
     - returns: RequestBuilder<Goal> 
     */
    open class func getGoalWithRequestBuilder(id: Int) -> RequestBuilder<Goal> {
        var path = "/goal/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Goal>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get all of a user's goals
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGoals(completion: @escaping ((_ data: [Goal]?,_ error: Error?) -> Void)) {
        getGoalsWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Get all of a user's goals
     - GET /goals
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - returns: RequestBuilder<[Goal]> 
     */
    open class func getGoalsWithRequestBuilder() -> RequestBuilder<[Goal]> {
        let path = "/goals"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Goal]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Creates a new goal for the user
     
     - parameter goalNewPayload: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func newGoal(goalNewPayload: GoalNewPayload, completion: @escaping ((_ data: Goal?,_ error: Error?) -> Void)) {
        newGoalWithRequestBuilder(goalNewPayload: goalNewPayload).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Creates a new goal for the user
     - POST /goal/new
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - parameter goalNewPayload: (body)  
     - returns: RequestBuilder<Goal> 
     */
    open class func newGoalWithRequestBuilder(goalNewPayload: GoalNewPayload) -> RequestBuilder<Goal> {
        let path = "/goal/new"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: goalNewPayload)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Goal>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update one specific goal by id
     
     - parameter id: (path) Numeric ID of the Goal to update 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateGoal(id: Int, completion: @escaping ((_ data: Goal?,_ error: Error?) -> Void)) {
        updateGoalWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Update one specific goal by id
     - PUT /goal/{id}
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - parameter id: (path) Numeric ID of the Goal to update 
     - returns: RequestBuilder<Goal> 
     */
    open class func updateGoalWithRequestBuilder(id: Int) -> RequestBuilder<Goal> {
        var path = "/goal/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Goal>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
