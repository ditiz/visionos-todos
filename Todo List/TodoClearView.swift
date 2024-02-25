//
//  TodoClearView.swift
//  Todo List
//
//  Created by Mathieu on 25/02/2024.
//

import SwiftUI

struct TodoClearView: View {
    @Binding var todos: [String]
    
    var body: some View {
        if !todos.isEmpty {
            Button(action: {
                todos = []
                
            }) {
                Text("Clear tasks")
            }
        }
    }
}

#Preview {
    TodoClearView(todos: .constant(["This is a todo", "This is a second todo"]))
}
