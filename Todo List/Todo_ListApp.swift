//
//  Todo_ListApp.swift
//  Todo List
//
//  Created by Mathieu on 24/02/2024.
//

import SwiftUI

@main
struct Todo_ListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
