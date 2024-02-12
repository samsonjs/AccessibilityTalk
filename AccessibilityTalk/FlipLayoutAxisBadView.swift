//
//  FlipLayoutAxisBadView.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-11.
//

import SwiftUI

struct FlipLayoutAxisBadView: View {
    private let titles: [String] = ["Video", "Audio", "Info"]

    var body: some View {
        HStack {
            ForEach(titles, id: \.self) { title in
                Button {} label: {
                    Text(title)
                        .frame(minWidth: 80)
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .navigationTitle("❌ Flip Layout")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        FlipLayoutAxisBadView()
    }
}
