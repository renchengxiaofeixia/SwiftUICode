//
//  ContentView.swift
//  CustomSwiftUITabBar
//
//  Created by xiaoqiang on 2022/4/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedIndex = 0
    @State var isPresented = false
    
    let icons = [
        "house",
        "gear",
        "plus",
        "lasso",
        "message"
    ]
    
    var body: some View {
        VStack {
            //Content
            ZStack {
                
                Spacer().fullScreenCover(isPresented: $isPresented) {
                    
                } content: {
                    Button {
                        isPresented.toggle()
                    } label: {
                        Text("Full Screen")
                    }

                }

                
                switch selectedIndex {
                case 0 :
                    NavigationView {
                        VStack{
                            Text("Home ")
                        }
                        .navigationTitle("Home")
                    }
                case 1 :
                    NavigationView {
                        VStack{
                            Text("Settings ")
                        }
                        .navigationTitle("Settings")
                    }
                case 2 :
                    NavigationView {
                        VStack{
                            Text("Add ")
                        }
                        .navigationTitle("Add")
                    }
                case 3 :
                    NavigationView {
                        VStack{
                            Text("Edit ")
                        }
                        .navigationTitle("Edit")
                    }
                default:
                    NavigationView {
                        VStack{
                            Text("Message ")
                        }
                        .navigationTitle("Message")
                    }
                }
                
            }
            Spacer()
            Divider()
            
            HStack {
                ForEach(0..<5, id: \.self){ number in
                    Spacer()
                    
                    Button {
                        if number == 2 {
                            isPresented.toggle()
                        }
                        else {
                            self.selectedIndex = number
                        }
                    } label: {
                        if(number == 2)
                        {
                            Image(systemName: icons[number] )
                                .font(.system(size: 25, weight: .regular, design: .default))
                                .frame(width: 50, height: 50)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(25)
                        }
                        else{
                            Image(systemName: icons[number] )
                                .font(.system(size: 30, weight: .regular, design: .default))
                                .foregroundColor(selectedIndex == number ? .black : Color(UIColor.lightGray))
                        }
                        
                    }
                    
                    Spacer()
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
