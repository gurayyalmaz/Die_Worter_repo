//
//  Word.swift
//  Die_Worter
//
//  Created by Gyuray Yalmaz on 23.03.25.
//

import Foundation
import SwiftData

@Model
class Word: Identifiable {
    @Attribute(.unique) var id: UUID
    var createdAt: Date
    var foreignWord: String
    var meaning: String
    var artikelImDeutschen: String
    
    init (
        id: UUID = .init(),
        createdAt: Date,
        foreignWord: String,
        meaning: String,
        artikel: String
    ) {
        self.id = id
        self.createdAt = createdAt
        self.foreignWord = foreignWord
        self.meaning = meaning
        self.artikelImDeutschen = artikel
    }
}
