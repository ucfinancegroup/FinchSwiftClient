//
// UsersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class UsersAPI {
    /**
     This route will be called once a user logs in on an iOS device and route body will contain the URL of the iOS device, this will be stored in the User model.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func registerIOSDevice(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ApiError?, _ error: Error?) -> Void)) {
        registerIOSDeviceWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     This route will be called once a user logs in on an iOS device and route body will contain the URL of the iOS device, this will be stored in the User model.
     - POST /registerIOSDevice
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - returns: RequestBuilder<ApiError> 
     */
    open class func registerIOSDeviceWithRequestBuilder() -> RequestBuilder<ApiError> {
        let path = "/registerIOSDevice"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiError>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     This route receives a payload with requests to change data of a user
     
     - parameter updateUserRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateUser(updateUserRequest: UpdateUserRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: User?, _ error: Error?) -> Void)) {
        updateUserWithRequestBuilder(updateUserRequest: updateUserRequest).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     This route receives a payload with requests to change data of a user
     - PUT /update/user
     - API Key:
       - type: apiKey finch-sid 
       - name: sidCookie
     - parameter updateUserRequest: (body)  
     - returns: RequestBuilder<User> 
     */
    open class func updateUserWithRequestBuilder(updateUserRequest: UpdateUserRequest) -> RequestBuilder<User> {
        let path = "/update/user"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateUserRequest)

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<User>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
