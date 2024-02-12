//
//  TextSizingBadView.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-11.
//

import SwiftUI

struct TextSizingBadView: View {
    var body: some View {
        Text("No bueno")
            .font(.system(size: 16))
            .navigationTitle("❌ Text Sizing")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        TextSizingBadView()
    }
}
