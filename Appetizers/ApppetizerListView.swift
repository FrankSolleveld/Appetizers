//
//  ApppetizerListView.swift
//  ApppetizerListView
//
//  Created by Frank Solleveld on 21/08/2021.
//

import SwiftUI

struct ApppetizerListView: View {
    var body: some View {
        NavigationView {
            Text("Appetizer List View")
                .navigationTitle(Text("🥨 Appetizers"))
        }
    }
}

struct ApppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        ApppetizerListView()
    }
}
