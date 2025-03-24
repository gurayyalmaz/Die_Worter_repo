//
//  WordDetailView.swift
//  Die_Worter
//
//  Created by Gyuray Yalmaz on 05.02.25.
//

import SwiftUI

struct WordDetailView: View {
    
    let word: Word
    
    var body: some View {
        NavigationStack {
            VStack {
                Text(word.meaning)
            }
            .navigationTitle(word.foreignWord)
        }
    }
}

#Preview {
    WordDetailView(word: Word(createdAt: .init(), foreignWord: "Katze", meaning: "Kedi", artikel: "Die"))
}
