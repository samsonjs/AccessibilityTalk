//
//  GoodDayView.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-12.
//

import SwiftUI

struct GoodDayView: View {
    @State var state: DayState = DayState()

    @Environment(\.dynamicTypeSize) var typeSize

    var body: some View {
        VStack(spacing: 4) {
            ZStack {
                if state.snippetCount == 0 {
                    if !typeSize.isAccessibilitySize {
                        Color(.systemGray3)
                    }
                } else {
                    Image("IceCube")
                        .resizable()
                        .scaledToFit()
                        .clipped()
                }

                if !typeSize.isAccessibilitySize {
                    Group {
                        date
                            .font(.headline)
                            .bold()
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)

                        journalIndicator
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)

                        description
                            .font(.headline)
                            .bold()
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                    }
                    .foregroundStyle(.thickMaterial)
                    .padding(4)
                }
            }
            .accessibilityElement()

            if typeSize.isAccessibilitySize {
                date
                    .bold()
                    .padding(4)
                    .frame(maxWidth: .infinity, alignment: .leading)

                HStack {
                    description
                        .frame(maxWidth: .infinity, alignment: .leading)

                    journalIndicator
                }
                .padding(4)
            }
        }
        .accessibilityElement()
        .accessibilityLabel(accessibilityDescription)
    }

    private var date: some View {
        Text("\(state.date.formatted(date: .abbreviated, time: .omitted))")
    }

    @ViewBuilder
    private var description: some View {
        switch state.snippetCount {
        case 0:
            EmptyView()

        case 1:
            Text("1 snippet")

        default:
            Text("\(state.snippetCount) snippets")
        }
    }

    @ViewBuilder
    private var journalIndicator: some View {
        if state.hasJournal {
            Image(systemName: "pencil.circle")
        }
    }

    private var accessibilityDescription: String {
        [
            state.date.formatted(date: .abbreviated, time: .omitted),
            state.isEmpty ? "empty" : nil,
            state.snippetCount == 1 ? "1 snippet" : nil,
            state.snippetCount > 1 ? "\(state.snippetCount) snippets" : nil,
            state.hasJournal ? "journal entry" : nil,
        ].compactMap { $0 }.joined(separator: ", ")
    }
}

#Preview {
    ScrollView {
        VStack {
            GoodDayView()

            GoodDayView(state: DayState(hasJournal: false, snippetCount: 1))

            GoodDayView(state: DayState(hasJournal: true, snippetCount: 2))
        }
    }
}
