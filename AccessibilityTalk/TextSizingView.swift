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
            VStack {
                Text("No bueno")
                    .font(.system(size: 16))

                Text("Nicht gut")
                    .font(Font.custom("Montserrat-Medium", fixedSize: 16))
            }
        } good: {
            VStack {
                Text("¡Mucho mejor!")

                // Defaults to relativeTo: .body, just for illustration
                Text("Viel besser!")
                    .font(Font.custom("Montserrat-Medium", size: 16, relativeTo: .body))
            }
        }
    }
}

#Preview {
    NavigationStack {
        TextSizingView()
    }
}
