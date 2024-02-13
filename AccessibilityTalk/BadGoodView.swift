//
//  BadGoodView.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-12.
//

import SwiftUI

struct BadGoodView<BadContent: View, GoodContent: View>: View {
    let title: String
    let bad: BadContent
    let good: GoodContent

    init(
        _ title: String, 
        @ViewBuilder bad: () -> BadContent,
        @ViewBuilder good: () -> GoodContent
    ) {
        self.title = title
        self.bad = bad()
        self.good = good()
    }

    var body: some View {
        VStack {
            Text("❌ Bad")
                  .font(.title)
            bad.frame(maxHeight: .infinity)

            Divider()

            Text("✅ Good")
                .font(.title)
                .accessibilityLabel("Good")
            good.frame(maxHeight: .infinity)
        }
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)

    }
}

#Preview {
    NavigationStack {
        BadGoodView("Text Sizing") {
            Text("No bueno")
                .font(.system(size: 16))
        } good: {
            Text("¡Mucho mejor!")
        }
    }
}
