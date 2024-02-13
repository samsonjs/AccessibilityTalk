//
//  TextImageView.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-13.
//

import SwiftUI

struct TextImageView: View {
    var body: some View {
        BadGoodView("Text in Image") {
            Image("AddSnippetSign")
                .resizable()
                .scaledToFit()
        } good: {
            Image("AddSnippetSign")
                .resizable()
                .scaledToFit()
                .accessibilityLabel("Add your daily snippet!")
                .accessibilityRemoveTraits(.isImage) // Suppress crappy ML interpretation of text
        }

    }
}

#Preview {
    NavigationStack {
        TextImageView()
    }
}
