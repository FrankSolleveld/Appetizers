//
//  Appetizer.swift
//  Appetizer
//
//  Created by Frank Solleveld on 22/08/2021.
//

import Foundation

struct Appetizer: Decodable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Hamburgor",
                                           description: "Sweet hamborgar",
                                           price: 69.99,
                                           imageURL: "https://www.google.com",
                                           calories: 69,
                                           protein: 69,
                                           carbs: 69)
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
