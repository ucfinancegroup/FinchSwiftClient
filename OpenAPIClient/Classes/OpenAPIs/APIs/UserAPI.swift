//
// UserAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class UserAPI {
    /**
     Log in a user
     
     - parameter loginPayload: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func loginUser(loginPayload: LoginPayload, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: User?,_ error: Error?) -> Void)) {
        loginUserWithRequestBuilder(loginPayload: loginPayload).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Log in a user
     - POST /login
     - responseHeaders: [Set-Cookie(String)]
     - parameter loginPayload: (body)  
     - returns: RequestBuilder<User> 
     */
    open class func loginUserWithRequestBuilder(loginPayload: LoginPayload) -> RequestBuilder<User> {
        let path = "/login"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: loginPayload)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<User>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Sign up a user
     
     - parameter signupPayload: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func signupUser(signupPayload: SignupPayload, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: User?,_ error: Error?) -> Void)) {
        signupUserWithRequestBuilder(signupPayload: signupPayload).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Sign up a user
     - POST /signup
     - responseHeaders: [Set-Cookie(String)]
     - parameter signupPayload: (body)  
     - returns: RequestBuilder<User> 
     */
    open class func signupUserWithRequestBuilder(signupPayload: SignupPayload) -> RequestBuilder<User> {
        let path = "/signup"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: signupPayload)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<User>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
