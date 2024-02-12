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
                Section {
                    NavigationLink("❌ Text Sizing") { TextSizingBadView() }
                    NavigationLink("✅ Text Sizing") { TextSizingView() }
                }
                Section {
                    NavigationLink("❌ Flexible Sizing (UIKit)") { FlexibleSizingBadUIView() }
                    NavigationLink("✅ Flexible Sizing (UIKit)") { FlexibleSizingUIView() }
                }
                Section {
                    NavigationLink("❌ Flexible Sizing (SwiftUI)") { FlexibleSizingBadView() }
                    NavigationLink("✅ Flexible Sizing (SwiftUI)") { FlexibleSizingView() }
                }
                Section {
                    NavigationLink("❌ Flip Layout Axis") { FlipLayoutAxisBadView() }
                    NavigationLink("✅ Flip Layout Axis") { FlipLayoutAxisView() }
                }
                Section {
                    NavigationLink("❌ Example Form") { ExampleFormBadView() }
                    NavigationLink("✅ Example Form") { ExampleFormView() }
                }
            }
            .navigationTitle("Accessibility Demo")
            .navigationBarTitleDisplayMode(.inline)
        }
    }

    var tktk: some View { Text("tktk") }
}

#Preview {
    ContentView()
}
