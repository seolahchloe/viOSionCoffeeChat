//
//  Data.swift
//  CoffeeChat_Ver2
//
//  Created by 김효석 on 2023/07/11.
//

import Foundation

struct Member: Identifiable {
    let id: UUID = UUID()
    let name: String
}


struct MyProfile {
    let name: String
    var likeMembers: [UUID]
    var coffeeChatMembers: [UUID]
}


let members: [Member] = [
    Member(name: "김강호"),
    Member(name: "박범수"),
    Member(name: "윤경환"),
    Member(name: "정석호"),
    Member(name: "정설아"),
    Member(name: "조연희")
]
