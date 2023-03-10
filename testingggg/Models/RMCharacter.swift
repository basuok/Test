//
//  RMCharacter.swift
//  testingggg
//
//  Created by Bassel Isshaq on 10.03.2023.
//

import Foundation

struct RMCharacter : Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type : String
    let gender : RMCharacterGender
    let origin : RMOrigin
    let location : RMSingleLocation
    let image : String
    let episode : [String]
    let url : String
    let created : String
}

enum RMCharacterStatus : String , Codable{
    case alive = "Alive"
    case Dead = "Dead"
    case unknown = "unknown"
}
enum RMCharacterGender : String , Codable{
    case male = "Male"
    case femal = "Femal"
    case genderless = "Genderless"
    case unknown = "unknown"
}

struct RMOrigin : Codable {
    let name : String
    let url : String
    
}


struct RMSingleLocation : Codable {
    let name : String
    let url : String
    
}

