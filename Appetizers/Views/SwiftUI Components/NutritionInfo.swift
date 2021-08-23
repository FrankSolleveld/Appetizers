//
//  NutritionInfo.swift
//  NutritionInfo
//
//  Created by Frank Solleveld on 23/08/2021.
//

import SwiftUI

struct NutritionInfo: View {

    let title: String
    let value: Int

    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)

            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
