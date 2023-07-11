//
//  Member.swift
//  CoffeeChat_Ver2
//
//  Created by Chloe Chung on 2023/07/11.
//

import Foundation



struct MeProfile: Profile {
    var id: UUID = UUID()
    var name: String
    var nickname: String
    var statusMessage: String
    var englishFisrtName: String
    
    
    var imageURLString: String
    var imageURL: URL {
        get {
            return URL(string: imageURLString)!
        }
    }
}

struct Friend: Profile {
    var id: UUID = UUID()
    var name: String
    var nickname: String
    var statusMessage: String
    var englishFisrtName: String
    
    var imageURLString: String
    var imageURL: URL {
        get {
            return URL(string: imageURLString)!
        }
    }
}
