//
//  ContentView.swift
//  Todo List
//
//  Created by Mathieu on 24/02/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State private var inputValue: String = ""
    @State private var todos: [String] = []
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome to your todo list")
            
            TodoInputView(inputValue: $inputValue) {
                if !inputValue.isEmpty {
                    todos.append(inputValue)
                    inputValue = ""
                }
            }
            
            TodoListView(todos: $todos)
            
            TodoClearView(todos: $todos)
        }.padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
