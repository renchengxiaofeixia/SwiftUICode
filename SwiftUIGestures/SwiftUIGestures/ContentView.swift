//
//  ContentView.swift
//  SwiftUIGestures
//
//  Created by xiaoqiang on 2022/4/20.
//

import SwiftUI

struct ContentView: View {
    @GestureState var isLongPressed = false
    @State var offset: CGSize = .zero
    
    var body: some View {
//        let longPressGesture = LongPressGesture()
//            .updating($isLongPressed) { newValue, state, transaction in
//                state = newValue
//            }
        
        let dragGesture = DragGesture()
            .onChanged { value in
                self.offset = value.translation
            }
        
        VStack {
            Circle()
                .frame(width: 150, height: 150, alignment: .center)
//                .foregroundColor( isLongPressed ? .orange : .blue)
//                .scaleEffect(isLongPressed ? 2 : 1)
//                .gesture(longPressGesture)
                .offset(x: offset.width, y: offset.height)
                .gesture(dragGesture)
                .animation(.default)
                
        }
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
