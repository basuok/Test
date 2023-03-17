//
//  RMService.swift
//  testingggg
//
//  Created by Bassel Isshaq on 10.03.2023.
//

import Foundation

/// Primary API Service Object to get Data
final class RMService {
    
    /// Shared Singleton instance
    static let shared = RMService()
    
    /// private constructor
    private init(){}
    
    ///Send API CALL
    ///- Parameters :
    /// - request : Request instance
    /// - type: The type of object we expect to ger back
    /// - completion : CallBack with data or error
    
    public func execute<T: Codable>(
    _ request: RMRequest,
    expecting type: T.Type,
    completion: @escaping (Result<T,Error>) -> Void) {
        
        
    }
    
}
