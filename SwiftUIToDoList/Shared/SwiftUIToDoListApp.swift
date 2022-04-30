//
//  SwiftUIToDoListApp.swift
//  Shared
//
//  Created by xiaoqiang on 2022/4/2.
//

import SwiftUI

@main
struct SwiftUIToDoListApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
