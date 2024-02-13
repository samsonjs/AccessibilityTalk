//
//  GoodSlider.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-12.
//

import SwiftUI

struct GoodSlider: View {
    @Binding var value: Double

    var range: ClosedRange<Double>

    var step: Double

    init(value: Binding<Double>, in range: ClosedRange<Double>? = nil, step: Double? = nil) {
        _value = value
        self.range = range ?? 0...1
        self.step = step ?? 0.02
    }

    var body: some View {
        HStack(spacing: 0) {
            Button {
                value = max(range.lowerBound, value - step)
            } label: {
                Image(systemName: "minus.circle")
                    .padding(8)
                    .contentShape(Rectangle())
            }
            .accessibilityHidden(true)

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
                .accessibilityRepresentation {
                    Slider(value: $value, in: range, step: step)
                }

            Button {
                value = min(range.upperBound, value + step)
            } label: {
                Image(systemName: "plus.circle")
                    .padding(8)
                    .contentShape(Rectangle())
            }
            .accessibilityHidden(true)
        }
    }
}

#Preview {
    GoodSlider(value: .constant(0.42))
}
