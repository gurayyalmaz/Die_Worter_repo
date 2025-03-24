//
//  MainPageView.swift
//  Die_Worter
//
//  Created by Gyuray Yalmaz on 04.02.25.
//

import SwiftUI

struct MainPageView: View {
    
    @Environment(\.modelContext) var modelContext
    @State var foreignWord = ""
    @State var meaning = ""
    @State var artikel = ""
    @State var isPresentedForSheetView = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Button("Add a word") {
                    isPresentedForSheetView = true
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .foregroundStyle(Color.white)
                .clipShape(Capsule())
                
                Button("Get a word") {
                    // TODO: some action
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .foregroundStyle(Color.white)
                .clipShape(Capsule())
            }
            .padding()
            .navigationTitle("Main Page")
        }
        .sheet(isPresented: $isPresentedForSheetView) {
            AddANewWordSheetView(foreignWord: $foreignWord, meaning: $meaning, artikel: $artikel) {
                let newWord = Word(createdAt: Date(), foreignWord: foreignWord, meaning: meaning, artikel: artikel)
                modelContext.insert(newWord)
            }
        }
    }
}

#Preview {
    MainPageView()
}
