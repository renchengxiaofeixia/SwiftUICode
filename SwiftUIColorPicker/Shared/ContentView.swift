//
//  ContentView.swift
//  Shared
//
//  Created by xiaoqiang on 2022/4/2.
//

import SwiftUI

struct ContentView: View {
    @State var backgroudColor = Color(.systemBackground)
    var body: some View {
        NavigationView {
            ZStack {
                backgroudColor
                
                ColorPicker("Select Color", selection: $backgroudColor)
                    .padding()
            }
            .navigationTitle("Color Picker")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
