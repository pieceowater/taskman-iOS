//
//  taskmanApp.swift
//  taskman
//
//  Created by yury mid on 26.06.2022.
//

import SwiftUI

@main
struct taskmanApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
