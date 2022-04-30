//
//  ContentView.swift
//  Facebook
//
//  Created by xiaoqiang on 2022/4/4.
//

import SwiftUI

struct ContentView: View {
    
    @Binding var searchText : String
    
    let facebookBlue = UIColor(red: 23/255.0, green: 120/255.0, blue: 242/255.0, alpha: 1)
    let stories = ["story1","story2","story3"]
    var body: some View {
        VStack {
            HStack {
                
                    Text("facebook")
                        .foregroundColor(Color(facebookBlue))
                        .font(.system(size: 48, weight: .bold, design: .default))
                
                Spacer()
                
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 45, height: 45, alignment: .center)
                    .foregroundColor(.secondary)
            }
            .padding()
            
            TextField("Search....",text: $searchText)
                .padding(7)
                .background(Color(.systemGray5))
                .cornerRadius(13)
                .padding(. horizontal,15)
            
            ZStack {
                Color(.secondarySystemBackground)
                
                ScrollView(.vertical) {
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 3) {
                                ForEach(stories, id: \.self) { name in
                                    Image(name)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 140, height: 200, alignment: .center)
                                        .background(.red)
                                        .clipped()
                                }
                            }
                            .padding()
                        }
                    }
                    
                    FacebookPost(name: "Mark Zeckerberg", timeAgo: "12 minutes ago", post: "hey guys i made this cool website callec the facebook to see if i'm cool or not!", imageName: "person1")
                    FacebookPost(name: "Jeff Bezos", timeAgo: "12 minutes ago", post: "you'll all see once i take over the world with amazon.", imageName: "person2")
                    FacebookPost(name: "Bill Gates", timeAgo: "1 hour ago", post: "who cares - i made windows!", imageName: "person3")
                }
            }
            
            Spacer()
        }
    }
}

struct FacebookPost : View {
    
    @State var isLike: Bool = false
    let name: String
    let timeAgo: String
    let post: String
    let imageName: String
    
    var body: some View {
        VStack {
            HStack {
                Image(imageName)
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .cornerRadius(25)
                
                VStack{
                    HStack{
                        Text(name)
                            .foregroundColor(.blue)
                            .font(.system(size: 18, weight: .semibold, design: .default))
                        Spacer()
                    }
                    HStack{
                        Text(timeAgo)
                        Spacer()
                    }
                }
                Spacer()
                
            }
            HStack{
                Text(post)
                    .font(.system(size: 24, weight: .regular, design: .default))
                    .multilineTextAlignment(.leading)
                
                Spacer()
            }
            Spacer()
            
            HStack {
                Button (action:{
                    isLike.toggle()
                }, label: {
                    Text(isLike ? "Liked" : "Like")
                })
                Spacer()
                Button (action:{
                    
                }, label: {
                    Text("Comment")
                })
                Spacer()
                Button (action:{
                    
                }, label: {
                    Text("Share")
                })
            }
            .padding()
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(7)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(searchText: .constant(""))
    }
}
