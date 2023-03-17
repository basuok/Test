//
//  RMCharacterViewController.swift
//  testingggg
//
//  Created by Bassel Isshaq on 10.03.2023.
//

import UIKit


final class RMCharacterViewController : UIViewController {
    
    
    /// Controller to show and search for characters
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
//       // let request = RMRequest(endpint: .character, pathComponents: ["1"])
//        let request = RMRequest(endpint: .character,
//                                queryParameters: [
//                                 URLQueryItem(name: "name", value: "rick"),
//                                URLQueryItem(name: "status", value: "alive")])
//        print(request.url)
//        
//                let request = RMRequest(endpint: .character,
//                                        queryParameters: [
//                                         URLQueryItem(name: "name", value: "rick"),
//                                        URLQueryItem(name: "status", value: "alive")])
//                print(request.url)
//        RMService.shared.execute(request,
//                                 expecting: RMCharacter.self) { result in
//            switch result {
//            case .success(<#T##RMCharacter#>)
//            }
//            
//        }
    }
    
   
}

