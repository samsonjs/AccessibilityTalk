//
//  ContentView.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Form {
                Section("1. Text Sizing") {
                    NavigationLink("SwiftUI") { TextSizingView() }
                }
                Section("2. Flexible Sizing") {
                    NavigationLink("SwiftUI") { FlexibleSizingView() }
                    NavigationLink("UIKit") { FlexibleSizingUIView() }
                }
                Section("3. Flip Layout Axis") {
                    NavigationLink("SwiftUI") { FlipLayoutAxisView() }
                }
                Section("4. Example Form") {
                    NavigationLink("❌ Bad SwiftUI Form") { ExampleFormBadView() }
                    NavigationLink(destination: ExampleFormGoodView()) {
                        Text("✅ Good SwiftUI Form")
                            .accessibilityLabel("Good SwiftUI Form")
                    }
                }
                Section("5. Calendar Grid") {
                    NavigationLink("❌ Bad SwiftUI Grid") { CalendarBadView() }
                    NavigationLink(destination: CalendarGoodView()) {
                        Text("✅ Good SwiftUI Grid")
                            .accessibilityLabel("Good SwiftUI Grid")
                    }
                }
                Section("6. Custom Controls") {
                    NavigationLink("Example SwiftUI Slider") { ExampleSliderView() }
                }
            }
            .navigationTitle("Accessibility Demo")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
