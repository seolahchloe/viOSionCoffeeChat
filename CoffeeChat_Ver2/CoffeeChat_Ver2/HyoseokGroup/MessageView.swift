//
//  MessageView.swift
//  CoffeeChat_Ver2
//
//  Created by 김효석 on 2023/07/11.
//

import SwiftUI

struct MessageView: View {
    
    @State var message: String = ""
    @State var member: Member
    
    var messages: [String] = ["Hello", "Hi", "kkkkkkkkkkkk"]
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .trailing) {
                    ForEach(messages, id: \.self) { message in
                        Text(message)
                            .padding()
                            .background(Color.yellow)
                            .cornerRadius(8)
                    }
                }
            }
            .padding()
            
            
            HStack {
                TextField("메시지를 입력하세요", text: $message)
                    .padding()
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    .padding()
                
                Spacer()
                
                Button {
                    print(message)
                } label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25)
                        .padding(.trailing)
                }
                .padding(.trailing)
            }
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(member: Member(name: "김강호"))
    }
}
