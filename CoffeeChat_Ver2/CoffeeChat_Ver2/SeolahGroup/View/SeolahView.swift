//
//  SeolahView.swift
//  CoffeeChat_Ver2
//
//  Created by Chloe Chung on 2023/07/11.
//


import SwiftUI

struct SeolahView: View {
    
    @State var isShowingAddSheet = false
    
    var body: some View {
        NavigationStack {
            
            VStack {
                
                List {
                    
                    Section("My Profile") {
                        NavigationLink {
                            MeProfileView()
                        } label: {
                            Image(meProfile.englishFisrtName)
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 70, height: 70)
                            VStack {
                                Text("\(meProfile.nickname)")
                                    .bold()
                                    .padding(2)
                                Text("\(meProfile.statusMessage)")
                            }
                        }
                    }
                    
                    Section("Friends") {
                        ForEach(friends) { friend in
                            NavigationLink {
                                FriendView()
                            } label: {
                                Image(friend.englishFisrtName)
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 60, height: 60)
                                VStack(alignment: .leading) {
                                    Text("\(friend.name)")
                                        .bold()
                                        .padding(1)
                                    Text("\(friend.statusMessage)")
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("앱스쿨 3기")
            
            // 친구 추가 버튼
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isShowingAddSheet = true
                    } label: {
                        Label("Add", systemImage: "person.crop.circle.badge.plus")
                    }
                    
                }
                
                
            }
            
            // 친구 검색 버튼
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isShowingAddSheet = true
                    } label: {
                        Label("Find", systemImage: "magnifyingglass")
                    }
                }
            }
             
        }
        
        
    }
    
        
}

//}

struct SeolahView_Previews: PreviewProvider {
    static var previews: some View {
        SeolahView()
    }
}
