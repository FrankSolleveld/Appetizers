//
//  ApppetizerListView.swift
//  ApppetizerListView
//
//  Created by Frank Solleveld on 21/08/2021.
//

import SwiftUI

struct AppetizerListView: View {

    @State private var appetizers: [Appetizer] = []

    var body: some View {
        NavigationView {
            List(MockData.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle(Text("🥨 Appetizers"))
        }
        .onAppear { getAppetizers() }
    }

    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }

}

struct ApppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
