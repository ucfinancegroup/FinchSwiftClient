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
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func validateUser(validateUserPayload: ValidateUserPayload, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        validateUserWithRequestBuilder(validateUserPayload: validateUserPayload).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
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
