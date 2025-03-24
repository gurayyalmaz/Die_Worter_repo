//
//  SavedWordsListView.swift
//  Die_Worter
//
//  Created by Gyuray Yalmaz on 04.02.25.
//

import SwiftUI
import SwiftData

struct SavedWordsListView: View {
    
    @Query var savedWords: [Word]
    
    var body: some View {

        NavigationStack {
            List(savedWords) { word in
                NavigationLink(destination: WordDetailView(word: word)) {
                    Text(word.foreignWord)
                }
            }
            .scrollContentBackground(.hidden)
            .background(Color(.systemIndigo))
        }
    }
}

#Preview {
    SavedWordsListView()
}
