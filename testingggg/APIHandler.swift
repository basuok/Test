//
//  APIHandler.swift
//  testingggg
//
//  Created by Bassel Isshaq on 07.03.2023.
//

import UIKit
import Alamofire

class APIHandler {
    
    static let sharedInstance = APIHandler()
    let url = "https://jsonplaceholder.typicode.com/posts"
    func fetchAPIData(){
        
        
        AF.request(url , method: .get , parameters: nil, encoding: URLEncoding.default , headers : nil , interceptor : nil
        ).response { response in
            switch response.result {
            case .success(let data):
                do {
                    let jsondata = try JSONDecoder().decode([Model].self, from: data!)
                    print(jsondata)
                } catch{
                    print(error.localizedDescription)
                }
            case .failure(let error):
                print(error.localizedDescription)
                
            }
        }
    }
}

struct Model : Codable {
    let userId : Int
    let id : Int
    let title : String
    let body : String
    
    
}
