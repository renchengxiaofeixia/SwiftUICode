//
//  ContentView.swift
//  SwiftUIWebView
//
//  Created by xiaoqiang on 2022/4/5.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            SwiftUIWebView(url: URL(string: "https://www.apple.com"))
                .navigationTitle("WebView")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
