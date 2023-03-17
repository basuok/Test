//
//  RMRequest.swift
//  testingggg
//
//  Created by Bassel Isshaq on 10.03.2023.
//

import Foundation

/// Object that represents a single API Call
final class RMRequest {
    
    // base url
    // endoint
    //path components
    // Query Parameters
    // type of the retuen using Genercs
    
    /// API Constants
    private struct Constansts {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired Endpoint
    private let endpint : RMEndPoint
    
    //collection of path components as array of Strings ( Path components for API if Any)
    //private let pathComponents : [String]
    private let pathComponents : Set<String>
    
    ///Query arguments  components for API if Any
    private let queryParameters : [URLQueryItem] // name and value URL
    
    /// Constructed URL for the api request in String Format
    private var urlString : String {
        var string = Constansts.baseUrl
        string += "/"
        string += endpint.rawValue
        
        if !pathComponents.isEmpty {
            //string += "/"
            pathComponents.forEach({
                string += "/\($0)"
                
            })
        }
           
        if !queryParameters.isEmpty {
            
            string += "?"
            //name = value&name=value
            let argumentString = queryParameters.compactMap({
                //because value is an optional type need to unrape it with guard
                guard let value = $0.value else { return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
    
        }
        
        return string
    }
    // create computed property to Actully make URL
    public var url : URL? {
        
        return URL(string: urlString)
    }
    ///  http method
    public let httpMethod = "GET"
    
    //MARK: - Public
    
    /// Construct request
    
    public init(
        endpint: RMEndPoint,
        pathComponents: Set<String> = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpint = endpint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
    
}
