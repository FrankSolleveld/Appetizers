//
//  Alert.swift
//  Alert
//
//  Created by Frank Solleveld on 23/08/2021.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    // MARK: - Network Alerts
    static let invalidData          = AlertItem(
                                            title: Text("Server Error"),
                                            message: Text("The data received from the server was invalid."),
                                            dismissButton: .default(Text("OK")))

    static let invalidResponse      = AlertItem(
                                            title: Text("Server Error"),
                                            message: Text("Invalid response from the server."),
                                            dismissButton: .default(Text("OK")))

    static let invalidURL           = AlertItem(
                                            title: Text("Server Error"),
                                            message: Text("There was an issue connecting to the server."),
                                            dismissButton: .default(Text("OK")))

    static let unableToComplete     = AlertItem(
                                            title: Text("Server Error"),
                                            message: Text("Unable to complete your request."),
                                            dismissButton: .default(Text("OK")))

    // MARK: - Account Alerts
    static let invalidForm          = AlertItem(
                                            title: Text("Invalid Form"),
                                            message: Text("Please ensure all fields in the form are filled out."),
                                            dismissButton: .default(Text("OK")))

    static let invalidEmail         = AlertItem(
                                            title: Text("Invalid Email"),
                                            message: Text("Please ensure your email is correct."),
                                            dismissButton: .default(Text("OK")))
}
