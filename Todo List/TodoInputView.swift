//
//  TodoInputView.swift
//  Todo List
//
//  Created by Mathieu on 25/02/2024.
//

import SwiftUI

struct TodoInputView: View {
    @Binding var inputValue: String
    @FocusState var inputFocus: Bool
      var addTodo: () -> Void
      
      var body: some View {
          TextField("Enter a task", text: $inputValue)
              .focused($inputFocus)
              .frame(maxWidth: 200)
              .onAppear {
                  inputFocus = true
              }.onSubmit() {
                  addTodo()
                  inputFocus = true
              }
          
          Button(action: addTodo) {
              Text("Add the todo")
          }
      }
}

#Preview {
    TodoInputView(inputValue: .constant(""), addTodo: {})
}
