//
//  FlexibleSizingViewController.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-11.
//

import SwiftUI
import UIKit

class FlexibleSizingViewController: UIViewController {
    var buttonTitle: String {
        didSet {
            button.setTitle(buttonTitle, for: .normal)
        }
    }

    var horizontalPadding: CGFloat {
        didSet {
            button.configuration?.contentInsets.leading = horizontalPadding
            button.configuration?.contentInsets.trailing = horizontalPadding
        }
    }

    var verticalPadding: CGFloat {
        didSet {
            button.configuration?.contentInsets.top = verticalPadding
            button.configuration?.contentInsets.bottom = verticalPadding
        }
    }

    init(title: String, horizontalPadding: CGFloat, verticalPadding: CGFloat) {
        self.buttonTitle = title
        self.horizontalPadding = horizontalPadding
        self.verticalPadding = verticalPadding
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private let button = UIButton(configuration: .borderedProminent())
    private var constraints: [NSLayoutConstraint] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        button.setTitle(buttonTitle, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(lessThanOrEqualTo: view.widthAnchor),
        ])
    }
}

struct _FlexibleSizingUIView: UIViewControllerRepresentable {
    var title: String
    var horizontalPadding: CGFloat
    var verticalPadding: CGFloat

    func makeUIViewController(context: Context) -> FlexibleSizingViewController {
        FlexibleSizingViewController(title: title, horizontalPadding: horizontalPadding, verticalPadding: verticalPadding)
    }

    func updateUIViewController(_ uiViewController: FlexibleSizingViewController, context: Context) {
        uiViewController.buttonTitle = title
        uiViewController.horizontalPadding = horizontalPadding
        uiViewController.verticalPadding = verticalPadding
    }
}

struct FlexibleSizingUIView: View {
    var title: String = "Reticulate Splines"
    var horizontalPadding: CGFloat = 24
    var verticalPadding: CGFloat = 12

    var body: some View {
        _FlexibleSizingUIView(title: title, horizontalPadding: horizontalPadding, verticalPadding: verticalPadding)
            .navigationTitle("✅ Flexible Sizing (UIKit)")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        FlexibleSizingUIView()
    }
}
