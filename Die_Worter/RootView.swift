//
//  RootView.swift
//  Die_Worter
//
//  Created by Gyuray Yalmaz on 05.02.25.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        NavigationStack {
            TabView {
                MainPageView()
                    .tabItem { Label("Home", systemImage: "house") }
                SavedWordsListView()
                    .tabItem { Label("Words", systemImage: "book") }
            }
        }
    }
}

#Preview {
    RootView()
        .modelContainer(for: Word.self, inMemory: true)
}
