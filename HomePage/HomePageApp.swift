//
//  HomePageApp.swift
//  HomePage
//
//  Created by Константин Евсюков on 31.01.2024.
//

import SwiftUI

@main
struct HomePageApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
