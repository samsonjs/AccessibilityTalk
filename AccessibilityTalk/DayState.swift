//
//  DayState.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-12.
//

import Foundation

struct DayState: Hashable {
    var date: Date = .now
    var hasJournal: Bool = false
    var snippetCount: Int = 0

    var isEmpty: Bool { !hasJournal && snippetCount == 0 }
}
