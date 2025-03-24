//
//  Die_WorterApp.swift
//  Die_Worter
//
//  Created by Gyuray Yalmaz on 04.02.25.
//

import SwiftUI
import SwiftData

@main
struct Die_WorterApp: App {
    
    var sharedModelContainer: ModelContainer {
        let schema = Schema(
            [Word.self]
        )
        
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        
        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError(error.localizedDescription)
        }
    }
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
        .modelContainer(sharedModelContainer)
    }
}
