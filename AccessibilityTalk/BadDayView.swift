//
//  DayView.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-12.
//

import SwiftUI

struct BadDayView: View {
    @State var state: DayState = DayState()

    var body: some View {
        ZStack {
            if state.snippetCount == 0 {
                Color(.systemGray3)
            } else {
                Image("Geese")
                    .resizable()
                    .scaledToFill()
                    .clipped()
            }

            date
                .font(.headline)
                .bold()
                .foregroundStyle(.thickMaterial)
                .padding(4)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)

            if state.hasJournal {
                Image(systemName: "pencil.circle")
                    .font(.headline)
                    .bold()
                    .foregroundStyle(.thickMaterial)
                    .padding(4)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
            }

            snippetDescription
                .font(.headline)
                .bold()
                .foregroundStyle(.thickMaterial)
                .padding(4)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
        }
    }

    private var date: some View {
        Text("\(state.date.formatted(date: .abbreviated, time: .omitted))")
    }

    @ViewBuilder
    private var snippetDescription: some View {
        switch state.snippetCount {
        case 0:
            EmptyView()

        case 1:
            Text("1 snippet")

        default:
            Text("\(state.snippetCount) snippets")
        }
    }
}

#Preview {
    VStack {
        BadDayView()

        BadDayView(state: DayState(hasJournal: false, snippetCount: 1))

        BadDayView(state: DayState(hasJournal: true, snippetCount: 2))
    }
}
