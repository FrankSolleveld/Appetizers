//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Frank Solleveld on 21/08/2021.
//

import SwiftUI

@main
struct AppetizersApp: App {

    var order = Order()

    var body: some Scene {
        WindowGroup {
            AppetizerTabView()
                .environmentObject(order)
        }
    }
}
