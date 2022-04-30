//
//  ContentView.swift
//  SwiftUIGradients
//
//  Created by xiaoqiang on 2022/4/4.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [Color.blue,Color.red], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all,edges: .all)
            
            VStack {
                Image(systemName: "sun.max.fill")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 220, height: 220, alignment: .center)
                    .padding()
                
                Text("Sunny!")
                    .font(.system(size: 24, weight: .semibold, design: .default))
                    .foregroundColor(.white)
                
                Spacer()
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
