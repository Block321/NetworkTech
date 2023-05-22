//
//  APIManager.swift

import Foundation
import Alamofire

class APIManager {

    static let shared = APIManager()

    private init() {}
    
    func request(url:String,method:HTTPMethod,parameters:Parameters?=nil,completionCallback:@escaping (AnyObject) -> Void ,success successCallback: @escaping (AnyObject) -> Void ,failure failureCallback: @escaping (String?) -> Void) {
        let headers: HTTPHeaders = [:]
        URLCache.shared.removeAllCachedResponses()
        
        AF.request(url, method: method, parameters: parameters, encoding: ArrayEncoding(), headers: headers).responseJSON { (response) in
            completionCallback(response as AnyObject)
            
            if self.isResponseValid(response: response) {
                switch response.result {
                case .success(_):
                    successCallback(response as AnyObject)
                case .failure(let error):
                    failureCallback(error.localizedDescription)
                }
            } else {
                let error =  self.getErrorForResponse(response: response)
                failureCallback(error)
            }
        }
    }

    //MARK:- Validation (Check response is valid or not)
    //MARK:-
     private func isResponseValid(response: AFDataResponse<Any>) -> Bool {
        if let statusCode = response.response?.statusCode, statusCode < 200 || statusCode >= 300 {
            return false
        }
        
        if let isSuccess = (response.value as AnyObject)["flag"] as? Bool {
            return isSuccess
        } else if let isSuccess = (response.value as AnyObject)["flag"] as? String {
            if isSuccess == "1" {
                return true
            } else {
                return false
            }
        }
        return true
    }
    
     func getErrorForResponse(response: AFDataResponse<Any>) -> String? {
        switch response.result {
        case .success(let responseJSON):
            if let responseDictionary = responseJSON as? [String: Any] {
                if let errorMessage = responseDictionary["message"] as? String {
                      return errorMessage
                }
                
                if let errorMessage = responseDictionary["response"] as? String {
                    return errorMessage
                }

                return responseDictionary.description
            }
            return nil
        case .failure(let errorObj):
            return errorObj.localizedDescription
        }
    }
    
}

private let arrayParametersKey = "arrayParametersKey"

/// Extenstion that allows an array be sent as a request parameters
extension Array {
    /// Convert the receiver array to a `Parameters` object.
    func asParameters() -> Parameters {
        return [arrayParametersKey: self]
    }
}


/// Convert the parameters into a json array, and it is added as the request body.
/// The array must be sent as parameters using its `asParameters` method.
public struct ArrayEncoding: ParameterEncoding {

    /// The options for writing the parameters as JSON data.
    public let options: JSONSerialization.WritingOptions


    /// Creates a new instance of the encoding using the given options
    ///
    /// - parameter options: The options used to encode the json. Default is `[]`
    ///
    /// - returns: The new instance
    public init(options: JSONSerialization.WritingOptions = []) {
        self.options = options
    }

    public func encode(_ urlRequest: URLRequestConvertible, with parameters: Parameters?) throws -> URLRequest {
        var urlRequest = try urlRequest.asURLRequest()

        guard let parameters = parameters,
            let array = parameters[arrayParametersKey] else {
                return urlRequest
        }

        do {
            let data = try JSONSerialization.data(withJSONObject: array, options: options)

            if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
                urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            }

            urlRequest.httpBody = data

        } catch {
            throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
        }

        return urlRequest
    }
}
