//
//  User.swift
//  User
//
//  Created by Frank Solleveld on 23/08/2021.
//

import Foundation

struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
