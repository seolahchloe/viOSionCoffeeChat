//
//  HyoseokView.swift
//  CoffeeChat_Ver2
//
//  Created by 김효석 on 2023/07/11.
//

import SwiftUI

struct HyoSeokView: View {
    
    @State var myProfile: MyProfile = MyProfile(name: "김효석", likeMembers: [], coffeeChatMembers: [])
    
    var body: some View {
        MemberView(myProfile: $myProfile)
    }
}

struct HyoSeokView_Previews: PreviewProvider {
    static var previews: some View {
        HyoSeokView()
    }
}
