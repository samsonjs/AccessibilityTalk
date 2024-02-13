//
//  TextSizingView.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-11.
//

import SwiftUI

struct TextSizingView: View {
    var body: some View {
        BadGoodView("Text Sizing") {
            Text("No bueno")
                .font(.system(size: 16))
        } good: {
            Text("¡Mucho mejor!")
        }
    }
}

#Preview {
    NavigationStack {
        TextSizingView()
    }
}
