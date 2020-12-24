//
// JobAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class JobAPI {
    /**
     Get Jobs
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCurrentJob(id: String ,apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Job?,_ error: Error?) -> Void)) {
        getCurrentJobWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Jobs
     - GET /positions/
     - returns: RequestBuilder<Job> 
     */
    open class func getCurrentJobWithRequestBuilder(id: String) -> RequestBuilder<Job> {
        let path = "/positions/\(id).json"
        let URLString = OpenAPIClientAPI.jobBasePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Job>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
