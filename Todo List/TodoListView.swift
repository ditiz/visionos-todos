//
//  TodoListView.swift
//  Todo List
//
//  Created by Mathieu on 25/02/2024.
//

import SwiftUI

struct TodoListView: View {
    @Binding var todos: [String]
    
    var body: some View {
        List {
            ForEach(todos.indices, id: \.self) { index in
                HStack {
                    Text(todos[index])
                    Spacer()
                    Button(action: {
                        todos.remove(at: index)
                    }) {
                        Image(systemName: "xmark.circle.fill")
                    }
                }
            }
        }
        .frame(maxWidth: 400)
        .padding()
    }
}

#Preview {
    TodoListView(todos: .constant(["This is a todo", "This is a second todo"]))
}
