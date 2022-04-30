//
//  ContentView.swift
//  CircleAnimation
//
//  Created by xiaoqiang on 2022/4/20.
//

import SwiftUI

struct ContentView: View {
    @State var fill:CGFloat = 0.0
    
    var body: some View {
        ZStack {
            Color.blue
            
            ZStack {
                Circle()
                    .stroke(Color.white.opacity(0.3),style:StrokeStyle(lineWidth: 30))
                
                Circle()
                    .trim(from: 0, to: self.fill)
                    .stroke(Color.yellow,style:StrokeStyle(lineWidth: 30))
                    .rotationEffect(.init(degrees: -90))
                    .animation(Animation.linear(duration: 0.5))
                
                Text("$\(Int(self.fill * 100))")
                    .font(.system(size: 52))
                    .foregroundColor(.white)
                    
            }
            .padding(50)
        }
        .onTapGesture {
            
            for x in 0...100 {
                
                DispatchQueue.main.asyncAfter(deadline: .now()+TimeInterval(x/10)) {
                    self.fill += 0.01
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
