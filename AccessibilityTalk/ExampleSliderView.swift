//
//  ExampleSliderView.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-12.
//

import SwiftUI

struct ExampleSliderView: View {
    @State private var badValue = 0.7

    @State private var goodValue = 0.42

    var body: some View {
        BadGoodView("Custom Slider") {
            BadSlider(value: $badValue)
        } good: {
            GoodSlider(value: $goodValue)
        }

    }
}

#Preview {
    NavigationStack {
        ExampleSliderView()
    }
}
