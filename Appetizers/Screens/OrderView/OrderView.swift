//
//  OrderView.swift
//  OrderView
//
//  Created by Frank Solleveld on 21/08/2021.
//

import SwiftUI

struct OrderView: View {

    @EnvironmentObject var order: Order

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(.insetGrouped)

                    Button {
                        print("Order Placed")
                    } label: {
                        APButton(title: "€\(order.totalPrice, specifier: "%.2f") - Place Order")
                            .padding(.bottom, 20)
                    }
                }

                if order.items.isEmpty {
                    EmptyState(
                        imageName: "empty-order",
                        message: "You have no items in your order.\nPlease add an appetizer!"
                    )
                }
            }
            .navigationTitle(Text("Orders"))
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
