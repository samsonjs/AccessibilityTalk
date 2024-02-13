//
//  CalendarGoodView.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-12.
//

import SwiftUI

struct CalendarGoodView: View {
    @Environment(\.dynamicTypeSize) var typeSize

    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridColumns, spacing: 0) {
                Group {
                    GoodDayView()

                    GoodDayView(state: DayState(hasJournal: false, snippetCount: 1))

                    GoodDayView(state: DayState(hasJournal: true, snippetCount: 2))
                }
            }
        }
        .navigationTitle("✅ Calendar Grid")
        .navigationBarTitleDisplayMode(.inline)
    }

    private var gridColumns: [GridItem] {
        let item = GridItem(.flexible(), spacing: 0)
        let count = typeSize.isAccessibilitySize ? 1 : 3
        return Array(repeating: item, count: count)
    }
}

#Preview {
    NavigationStack {
        CalendarGoodView()
    }
}
