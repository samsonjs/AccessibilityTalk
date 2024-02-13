//
//  FlexibleSizingUIView.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-12.
//

import SwiftUI

struct FlexibleSizingUIView: View {
    var body: some View {
        BadGoodView("Flexible Sizing (UIKit)") {
            FlexibleSizingBadUIView()
        } good: {
            FlexibleSizingGoodUIView()
        }
    }
}

#Preview {
    NavigationStack {
        FlexibleSizingUIView()
            .navigationTitle("Flexible Sizing (UIKit)")
            .navigationBarTitleDisplayMode(.inline)
    }
}
