//
//  ApppetizerListView.swift
//  ApppetizerListView
//
//  Created by Frank Solleveld on 21/08/2021.
//

import SwiftUI

struct AppetizerListView: View {

    @StateObject var viewModel = AppetizerListViewModel()

    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                }
                .navigationTitle(Text("🥨 Appetizers"))
            }
            .onAppear { viewModel.getAppetizers() }
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
            }

            if viewModel.isLoading {
                LoadingView()
            }
        }
    }
}

struct ApppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
