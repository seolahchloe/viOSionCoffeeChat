//
//  SeokhoStore.swift
//  CoffeeChat
//


import Foundation
import SwiftUI

class HeartStore {
    
    var hearts: [Heart] = []
    
    init() {
        hearts = [
            Heart(name: "김강호", heartToggle: false, coffeeToggle: true),
            Heart(name: "박범수", heartToggle: true, coffeeToggle: false),
            Heart(name: "윤경환", heartToggle: false, coffeeToggle: true),
            Heart(name: "정석호", heartToggle: true, coffeeToggle: false),
            Heart(name: "정설아", heartToggle: false, coffeeToggle: true),
            Heart(name: "조연희", heartToggle: true, coffeeToggle: false),
            Heart(name: "김효석", heartToggle: true, coffeeToggle: true)
        ]
    }
    
    
    func toggleHeart(heart: Heart) {
        
        for index in hearts.indices {
            if hearts[index].id == heart.id {
                hearts[index].heartToggle.toggle()
                break
            }
        }
    }
    
    
}
