//
//  SeokhoContentView.swift
//  CoffeeChat
//
//  Created by 정유진 on 2023/07/10.
//

import SwiftUI

struct SeokhoContentView: View {
    var heartsStore: HeartStore = HeartStore()
    
    @State var heartToggle: Bool
    @State var coffeeToggle: Bool
    
    var body: some View {
        HStack {
            Image(systemName: "heart.square.fill")
                .padding()
                .font(.largeTitle)
            Spacer()
        }
        List {
            Section("전체") {
                ForEach(heartsStore.hearts) { heart in
                    HStack {
                        Text("\(heart.name)")
                        Spacer()
                        Button {
                            
                            heartsStore.toggleHeart(heart: heart)
                            
                        } label: {
                            Text("\(heart.coffee)")
                        }
                        .padding()
                        
                        Text("\(heart.heart)")
                            
                    }
                }.padding()
            }
            /*
            Section("하트를 누른 사람") {
                
                ForEach(heartsStore.hearts) { heart in
                    HStack {
                        if heart.heartToggle {
                            Text("\(heart.name)")
                            Spacer()
                            Text("\(heart.heart)")
                        }
                    }
                }.padding()
            }
            
            Section("커피챗을 하고 싶은 사람") {
                ForEach(heartsStore.hearts) { heart in
                    HStack {
                        if heart.coffeeToggle {
                            Text("\(heart.name)")
                            Spacer()
                            Text("\(heart.coffee)")
                        }
                    }
                }.padding()
                
            }
             */
            
        }.listStyle(.plain)
            
    }
}

struct SeokhoContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SeokhoContentView(heartsStore: HeartStore(), heartToggle: true, coffeeToggle: true)
        }
    }
}
