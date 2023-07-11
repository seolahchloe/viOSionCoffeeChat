//
//  SeokhoView.swift
//  CoffeeChat
//
//  Created by Chloe Chung on 2023/07/10.
//

import SwiftUI

struct SeokhoView: View {
    
    var body: some View {
        SeokhoContentView(heartToggle: true, coffeeToggle: true)
    }
}

struct SeokhoView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SeokhoView()
        }
    }
}
