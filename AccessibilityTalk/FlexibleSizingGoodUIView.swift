//
//  FlexibleSizingGoodUIView.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-11.
//

import SwiftUI
import UIKit

class FlexibleSizingGoodViewController: UIViewController {
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

struct FlexibleSizingGoodUIView: UIViewControllerRepresentable {
    var title: String = "Reticulate Splines"
    var horizontalPadding: CGFloat = 24
    var verticalPadding: CGFloat = 12

    func makeUIViewController(context: Context) -> FlexibleSizingGoodViewController {
        FlexibleSizingGoodViewController(title: title, horizontalPadding: horizontalPadding, verticalPadding: verticalPadding)
    }

    func updateUIViewController(_ uiViewController: FlexibleSizingGoodViewController, context: Context) {
        uiViewController.buttonTitle = title
        uiViewController.horizontalPadding = horizontalPadding
        uiViewController.verticalPadding = verticalPadding
    }
}

#Preview {
    NavigationStack {
        FlexibleSizingUIView()
            .navigationTitle("✅ Flexible Sizing (UIKit)")
            .navigationBarTitleDisplayMode(.inline)
    }
}
