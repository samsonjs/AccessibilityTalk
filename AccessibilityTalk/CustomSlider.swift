//
//  CustomSlider.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-12.
//

import SwiftUI

struct CustomSlider: View {
    @Binding var value: Double

    var body: some View {
        HStack(spacing: 0) {
            Button {
                value = max(0, value - 0.05)
            } label: {
                Image(systemName: "minus.circle")
                    .padding(8)
                    .contentShape(Rectangle())
            }

            Rectangle()
                .fill(Color(.systemGray3))
                .clipShape(RoundedRectangle(cornerRadius: 4))
                .frame(height: 8)
                .frame(minWidth: 60)
                .overlay {
                    GeometryReader { geometry in
                        Rectangle()
                            .fill(Color.accentColor)
                            .clipShape(RoundedRectangle(cornerRadius: 4))
                            .frame(width: value * geometry.size.width, height: 8)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }

            Button {
                value = min(1, value + 0.05)
            } label: {
                Image(systemName: "plus.circle")
                    .padding(8)
                    .contentShape(Rectangle())
            }
        }
    }
}

#Preview {
    CustomSlider(value: .constant(0.42))
}
