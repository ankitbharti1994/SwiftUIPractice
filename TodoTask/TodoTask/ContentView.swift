//
//  ContentView.swift
//  TodoTask
//
//  Created by ankit bharti on 01/11/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var context
    @FetchRequest(fetchRequest: TodoItem.getAllTodoItems()) var todoItems: FetchedResults<TodoItem>
    @State private var titleText: String = ""
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("What next?")) {
                    HStack {
                       TextField("enter todo title", text: $titleText)
                        Button(action: {
                            let item = TodoItem(context: self.context)
                            item.createdAt = Date()
                            item.title = self.titleText
                            
                            do {
                                try self.context.save()
                            } catch {
                                print("couldn't save todo item.")
                            }
                            
                            self.titleText = ""
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(.green)
                        }
                    }
                }
                
                Section(header: Text("Todo")) {
                    ForEach(self.todoItems) { item in
                        TodoItemView(item: item)
                    }
                    .onDelete { indexset in
                        let item = self.todoItems[indexset.first!]
                        self.context.delete(item)
                        
                        do {
                            try self.context.save()
                        } catch {
                            fatalError(error.localizedDescription)
                        }
                    }
                }
            }
            .navigationBarTitle("My List")
            .navigationBarItems(trailing: EditButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
