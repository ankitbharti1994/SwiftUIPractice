//
//  TodoItem.swift
//  TodoTask
//
//  Created by ankit bharti on 01/11/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import Foundation
import CoreData

public class TodoItem: NSManagedObject, Identifiable {
    @NSManaged public var createdAt: Date?
    @NSManaged public var title: String?
}

extension TodoItem {
    static func getAllTodoItems() -> NSFetchRequest<TodoItem> {
        let request: NSFetchRequest<TodoItem> = TodoItem.fetchRequest() as! NSFetchRequest<TodoItem>
        
        let descriptor = NSSortDescriptor(key: "createdAt", ascending: true)
        request.sortDescriptors = [descriptor]
        
        return request
    }
}
