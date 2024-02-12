//
//  TextSizingView.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-11.
//

import SwiftUI

struct TextSizingView: View {
    var body: some View {
        Text("¡Mucho mejor!")
            .navigationTitle("✅ Text Sizing")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        TextSizingView()
    }
}
