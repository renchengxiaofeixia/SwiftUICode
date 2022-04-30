//
//  ContentView.swift
//  SwiftUIGrid
//
//  Created by xiaoqiang on 2022/4/5.
//

import SwiftUI

struct ContentView: View {
    
    let items = Array(1...1000).map { (" Element\($0)")}
    let layout = [
        GridItem(.adaptive(minimum: 80))
//        GridItem(.flexible(minimum: 800))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid (columns: layout, content: {
                ForEach(items, id: \.self){ item in
                    Text(item)
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
