//
//  Protocol.swift
//  CoffeeChat_Ver2
//
//  Created by Chloe Chung on 2023/07/11.
//

import Foundation

protocol imageURL {
    var imageURLString: String { get set }
    var imageURL: URL { get }
}

protocol Profile: imageURL, Identifiable {
    var name: String { get set }
    var nickname: String { get set }
    var statusMessage: String { get set }
    
}
