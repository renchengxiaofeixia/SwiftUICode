//
//  ContentView.swift
//  Shared
//
//  Created by xiaoqiang on 2022/4/2.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var context
    
    @FetchRequest(fetchRequest: ToDoListItem.getAllToDoListItems())
    var items: FetchedResults<ToDoListItem>
    
    @State var text : String = ""
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("New Item")) {
                    HStack {
                        TextField("Enter New Item", text: $text)
                        Button {
                            if !text.isEmpty {
                                let newItem = ToDoListItem(context: context)
                                newItem.name = text
                                newItem.createAt = Date()
                                
                                
                                do{
                                    try context.save()
                                    
                                }catch{
                                    
                                }
                            }
                        } label: {
                            Text("Save")
                        }

                    }
                }
                
                Section {
                    ForEach(items) { toDoListItem in
                        VStack(alignment: .leading) {
                            Text(toDoListItem.name!)
                                .font(.headline)
                            Text("\(toDoListItem.createAt!)")
                            
                        }
                    }.onDelete { IndexSet in
                        guard let index = IndexSet.first else {
                            return
                        }
                        let item = items[index]
                        context.delete(item)
                        do {
                            try context.save()
                        }catch {
                            
                        }
                    }
                }
            }
            .navigationTitle("To Do List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
