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
                Section("2. Text in Images") {
                    NavigationLink("SwiftUI") { TextImageView() }
                }
                Section("3. Flexible Sizing") {
                    NavigationLink("SwiftUI") { FlexibleSizingView() }
                    NavigationLink("UIKit") { FlexibleSizingUIView() }
                }
                Section("4. Flip Layout Axis") {
                    NavigationLink("SwiftUI") { FlipLayoutAxisView() }
                }
                Section("5. Example Form") {
                    NavigationLink("❌ Bad SwiftUI Form") { ExampleFormBadView() }
                    NavigationLink(destination: ExampleFormGoodView()) {
                        Text("✅ Good SwiftUI Form")
                            .accessibilityLabel("Good SwiftUI Form")
                    }
                }
                Section("6. Calendar Grid") {
                    NavigationLink("❌ Bad SwiftUI Grid") { CalendarBadView() }
                    NavigationLink(destination: CalendarGoodView()) {
                        Text("✅ Good SwiftUI Grid")
                            .accessibilityLabel("Good SwiftUI Grid")
                    }
                }
                Section("7. Custom Controls") {
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
