//
//  ToDoListItem.swift
//  SwiftUIToDoList
//
//  Created by xiaoqiang on 2022/4/2.
//

import Foundation
import CoreData
import SwiftUI

class ToDoListItem : NSManagedObject, Identifiable {
    @NSManaged var name : String?
    @NSManaged var createAt : Date?
}

extension ToDoListItem {
    static func getAllToDoListItems() -> NSFetchRequest<ToDoListItem> {
        let request : NSFetchRequest<ToDoListItem> =
        ToDoListItem.fetchRequest() as! NSFetchRequest<ToDoListItem>
        
        let sort = NSSortDescriptor(key: "createAt", ascending: true)
        request.sortDescriptors = [sort]
        
        return request
    }
}
