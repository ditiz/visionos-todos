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
    
    @State private var showImmersiveSpace = false
    @State private var immersiveSpaceIsShown = false
    @State private var inputValue: String = ""
    @State private var todos: [String] = []
    
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome to your todo list")
            
            TextField("Enter a task", text: $inputValue).frame(maxWidth: 200)
            
            Button(action: {
                if !inputValue.isEmpty {
                    todos.append(inputValue)
                    inputValue = ""
                }
            }) {
                Text("Add the todo")
            }
            
            
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
            }.frame(maxWidth: 400)
            
            Model3D(named: "", bundle: realityKitContentBundle)
                .padding(.bottom, 50)
        }.padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
