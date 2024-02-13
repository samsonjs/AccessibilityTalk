//
//  DynamicTypeAdaptiveView.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-11.
//

import SwiftUI

struct DynamicTypeAdaptiveStack<Content: View>: View {
    let verticalThreshold: DynamicTypeSize

    let spacing: Double

    let content: Content

    @Environment(\.dynamicTypeSize) private var typeSize

    init(
        verticalThreshold: DynamicTypeSize,
        spacing: Double = 8,
        @ViewBuilder content: () -> Content
    ) {
        self.verticalThreshold = verticalThreshold
        self.spacing = spacing
        self.content = content()
    }

    var body: some View {
        layout { content }
    }

    private var layout: AnyLayout {
        if typeSize >= verticalThreshold {
            return AnyLayout(VStackLayout(spacing: spacing))
        } else {
            return AnyLayout(HStackLayout(spacing: spacing))
        }
    }
}

#Preview {
    DynamicTypeAdaptiveStack(verticalThreshold: .xxxLarge) {
        Text("first")
        Text("second")
    }
}
