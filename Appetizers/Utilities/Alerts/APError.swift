//
//  APError.swift
//  APError
//
//  Created by Frank Solleveld on 22/08/2021.
//

import Foundation

enum APError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
