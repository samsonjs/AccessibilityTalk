//
//  FlexibleSizingView.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-11.
//

import SwiftUI

struct FlexibleSizingView: View {
    var body: some View {
        Button {} label: {
            Text("Reticulate Splines")
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
        }
        .buttonStyle(.borderedProminent)
        .navigationTitle("✅ Flexible Sizing (SwiftUI)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        FlexibleSizingView()
    }
}
