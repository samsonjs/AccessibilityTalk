//
//  FlipLayoutAxisView.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-11.
//

import SwiftUI

struct FlipLayoutAxisView: View {
    private let titles: [String] = ["Video", "Audio", "Info"]

    var body: some View {
        BadGoodView("Flip Layout") {
            HStack {
                ForEach(titles, id: \.self) { title in
                    Button {} label: {
                        Text(title)
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
        } good: {
            DynamicTypeAdaptiveStack(verticalThreshold: .accessibility3) {
                ForEach(titles, id: \.self) { title in
                    Button {} label: {
                        Text(title)
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
        }
        .padding()
    }
}

    /*
     if dynamicTypeSize.isAccessibilitySize {
         VStack {
             DynamicTypeAdapticStack(verticalThreshold: .accessibility1) {
                 originalSizeViews
             }
             Text("↓")
             DynamicTypeAdapticStack(verticalThreshold: .accessibility1) {
                 estimatedSizeViews
             }
         }
     } else {
         HStack {
             VStack {
                 originalSizeViews
             }
             .frame(maxWidth: .infinity)
             Text("→")
                 .padding(.horizontal)
             VStack {
                 estimatedSizeViews
             }
             .frame(maxWidth: .infinity)
         }
     }
     */

    /*
    @ViewBuilder
    private var dimensionsSection: some View {
        Section(
            header: Text("size"),
            footer: Text("originally \(viewModel.originalDimensionsText)")
        ) {
            Picker(selection: $viewModel.selectedSizeClass) {
                ForEach(viewModel.availableSizeClasses) { sizeClass in
                    HStack {
                        DynamicTypeAdapticStack(verticalThreshold: .accessibility1) {
                            Text(sizeClass.description)
                                .foregroundColor(Color(.label))
                            Text(viewModel.dimensions(of: sizeClass))
                                .foregroundColor(Color(.secondaryLabel))
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                        Image(systemSymbol: .chevronForward)
                            .hidden()
                    }
                    .tag(sizeClass)
                }
            } label: { EmptyView() }
                .pickerStyle(.inline)
        }
    }
     */

#Preview {
    NavigationStack {
        FlipLayoutAxisView()
    }
}
