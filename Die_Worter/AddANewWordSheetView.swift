//
//  AddANewWordSheetView.swift
//  Die_Worter
//
//  Created by Gyuray Yalmaz on 04.02.25.
//

import SwiftUI

struct AddANewWordSheetView: View {
    
    @Binding var foreignWord: String
    @Binding var meaning: String
    @Binding var artikel: String
    
    var onAdd: () -> Void
    
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    Section {
                        TextField("Foreign word", text: $foreignWord)
                        TextField("Meaning in my language", text: $meaning)
                        TextField("Artikel", text: $artikel)
                        Button("Save") {
                            onAdd()
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundStyle(Color.white)
                        .clipShape(Capsule())
                    } header: {
                        Text("Create a word")
                            .padding(.vertical)
                    }
                }
            }
            .navigationTitle("Create a word")
        }
    }
}

#Preview {
    AddANewWordSheetView(foreignWord: .constant("Cat"), meaning: .constant("Kedi"), artikel: .constant("")) {
        //Some action placeholder
    }
}
