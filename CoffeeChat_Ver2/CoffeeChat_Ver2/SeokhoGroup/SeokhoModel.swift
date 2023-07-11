//
//  SeokhoModel.swift
//  CoffeeChat
//


import Foundation
import SwiftUI

struct Heart: Identifiable {
    let id: UUID = UUID()
    var name: String
    var heartToggle: Bool
    var coffeeToggle: Bool
//    var heartImg: Image
//    var coffeeImg: Image
    
    var heart: Image {
         get {
            if heartToggle {
                return Image(systemName: "heart.fill")
            } else {
                return Image(systemName: "heart")
            }
        }
    }
    
    var coffee: Image {
        get {
            if coffeeToggle {
                return Image(systemName: "cup.and.saucer.fill")
            } else {
                return Image(systemName: "cup.and.saucer")
            }
        }
    }
}

