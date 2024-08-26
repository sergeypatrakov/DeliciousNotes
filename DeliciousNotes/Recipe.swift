//
//  Recipe.swift
//  DeliciousNotes
//
//  Created by Sergey Patrakov on 26.08.2024.
//

import Foundation

struct Recipe: Identifiable, Codable {
    var id: String
    var name: String
    var imageURL: String
    var description: String
    var steps: [String]?
}
