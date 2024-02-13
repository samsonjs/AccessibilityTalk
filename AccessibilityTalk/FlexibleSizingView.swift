//
//  FlexibleSizingView.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-11.
//

import SwiftUI

struct FlexibleSizingView: View {
    var body: some View {
        BadGoodView("Flexible Sizing (SwiftUI)") {
            Button {} label: {
                Text("Reticulate Splines")
                    .frame(width: 180, height: 44)
            }
            .buttonStyle(.borderedProminent)
        } good: {
            Button {} label: {
                Text("Reticulate Splines")
                    .padding(.horizontal, 24)
                    .padding(.vertical, 12)
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    NavigationStack {
        FlexibleSizingView()
            .navigationTitle("Flexible Sizing (SwiftUI)")
            .navigationBarTitleDisplayMode(.inline)
    }
}
