//
//  MemberView.swift
//  CoffeeChat_Ver2
//
//  Created by 김효석 on 2023/07/11.
//

import SwiftUI

struct MemberView: View {
    
    @Binding var myProfile: MyProfile
    @State var isPresentedSheet: Bool = false
    
    var body: some View {
        NavigationStack {
            
            List(members) { member in
                
                HStack {
                    Text("\(member.name)")
                    
                    Button {
                        isPresentedSheet = true
                    } label: {
                        Image(systemName: "message")
                    }
                    .buttonStyle(PlainButtonStyle())
                    .sheet(isPresented: $isPresentedSheet) {
                        MessageView(member: member)
                    }
                    
                    Spacer()
                    
                    Button {
                        if !myProfile.coffeeChatMembers.contains(member.id) {
                            myProfile.coffeeChatMembers.append(member.id)
                        } else {
                            myProfile.coffeeChatMembers.removeAll { $0 == member.id }
                        }
                    } label: {
                        if myProfile.coffeeChatMembers.contains(member.id) {
                            Image(systemName: "cup.and.saucer.fill")
                                .padding(.horizontal)
                                .foregroundColor(.brown)
                        } else {
                            Image(systemName: "cup.and.saucer")
                                .padding(.horizontal)
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    Button {
                        if !myProfile.likeMembers.contains(member.id) {
                            myProfile.likeMembers.append(member.id)
                        } else {
                            myProfile.likeMembers.removeAll { $0 == member.id }
                        }
                    } label: {
                        if myProfile.likeMembers.contains(member.id) {
                            Image(systemName: "heart.fill")
                                .foregroundColor(.red)
                        } else {
                            Image(systemName: "heart")
                        }
                    }
                    .buttonStyle(PlainButtonStyle())

                }
                .font(.title3)
                .padding()
                
            }
            .listStyle(.plain)
            .navigationTitle("수강생 목록")
        }
    }
}

struct MemberView_Previews: PreviewProvider {
    static var previews: some View {
        MemberView(myProfile: .constant(MyProfile(name: "김효석", likeMembers: [], coffeeChatMembers: [])))
    }
}
