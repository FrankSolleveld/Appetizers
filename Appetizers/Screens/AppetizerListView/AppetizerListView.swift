//
//  ApppetizerListView.swift
//  ApppetizerListView
//
//  Created by Frank Solleveld on 21/08/2021.
//

import SwiftUI

struct AppetizerListView: View {

    @StateObject var viewModel = AppetizerListViewModel()
    @State private var isShowingDetail = false
    @State private var selectedAppetizer: Appetizer?

    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            isShowingDetail = true
                            selectedAppetizer = appetizer
                        }
                }
                .navigationTitle(Text("🥨 Appetizers"))
                .disabled(isShowingDetail)
            }
            .onAppear { viewModel.getAppetizers() }
            .blur(radius: isShowingDetail ? 20 : 0)
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
            }

            if isShowingDetail {
                AppetizerDetailView(
                    appetizer: selectedAppetizer!,
                    isShowingDetail: $isShowingDetail)
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
