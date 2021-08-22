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
            List(MockData.appetizers) { appetizer in
                HStack {
                    Image("asian-flank-steak")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 90)
                        .cornerRadius(10)
                    VStack(alignment: .leading, spacing: 5) {
                        Text(appetizer.name)
                            .font(.title2)
                            .fontWeight(.medium)
                        Text("€\(appetizer.price, specifier: "%.2f")")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                    }
                    .padding(.leading)
                }
            }
            .navigationTitle(Text("🥨 Appetizers"))
        }
    }
}

struct ApppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        ApppetizerListView()
    }
}
