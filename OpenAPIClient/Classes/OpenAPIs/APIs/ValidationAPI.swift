//
// ValidationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class ValidationAPI {
    /**
     This route lets our clients perform step-by-step signups.
     
     - parameter validateUserPayload: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func validateUser(validateUserPayload: ValidateUserPayload, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        validateUserWithRequestBuilder(validateUserPayload: validateUserPayload).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }

    /**
     This route lets our clients perform step-by-step signups.
     - POST /validate/user
     - parameter validateUserPayload: (body)  
     - returns: RequestBuilder<Void> 
     */
    open class func validateUserWithRequestBuilder(validateUserPayload: ValidateUserPayload) -> RequestBuilder<Void> {
        let path = "/validate/user"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: validateUserPayload)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}