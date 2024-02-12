//
//  FlexibleSizingBadView.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-11.
//

import SwiftUI

struct FlexibleSizingBadView: View {
    var body: some View {
        Button {} label: {
            Text("Reticulate Splines")
                .frame(width: 180, height: 44)
        }
        .buttonStyle(.borderedProminent)
        .navigationTitle("❌ Flexible Sizing (SwiftUI)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        FlexibleSizingBadView()
    }
}
