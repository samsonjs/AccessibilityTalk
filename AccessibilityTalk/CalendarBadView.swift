//
//  CalendarBadView.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-12.
//

import SwiftUI

struct CalendarBadView: View {
    var body: some View {
        LazyVGrid(columns: gridColumns, spacing: 0) {
            Group {
                BadDayView()

                BadDayView(state: DayState(hasJournal: false, snippetCount: 1))

                BadDayView(state: DayState(hasJournal: true, snippetCount: 2))
            }
        }
    }

    private var gridColumns: [GridItem] {
        let item = GridItem(.flexible(), spacing: 0)
        return Array(repeating: item, count: 3)
    }
}

#Preview {
    NavigationStack {
        CalendarBadView()
            .navigationTitle("❌ Calendar Grid")
            .navigationBarTitleDisplayMode(.inline)
    }
}
