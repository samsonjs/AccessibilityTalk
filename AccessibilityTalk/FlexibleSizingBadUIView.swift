//
//  FlexibleSizingViewController.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-11.
//

import SwiftUI
import UIKit

class FlexibleSizingBadViewController: UIViewController {
    var buttonTitle: String {
        didSet {
            button.setTitle(buttonTitle, for: .normal)
        }
    }

    var width: CGFloat {
        didSet {
            updateButtonConstraints()
        }
    }

    var height: CGFloat {
        didSet {
            updateButtonConstraints()
        }
    }

    init(title: String, width: CGFloat, height: CGFloat) {
        self.buttonTitle = title
        self.width = width
        self.height = height
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
        updateButtonConstraints()
    }

    private func updateButtonConstraints() {
        NSLayoutConstraint.deactivate(constraints)
        constraints = [
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: width),
            button.heightAnchor.constraint(equalToConstant: height),
        ]
        NSLayoutConstraint.activate(constraints)
    }
}

struct FlexibleSizingBadUIView: UIViewControllerRepresentable {
    var title: String = "Reticulate Splines"
    var width: CGFloat = 180
    var height: CGFloat = 44

    func makeUIViewController(context: Context) -> FlexibleSizingBadViewController {
        FlexibleSizingBadViewController(title: title, width: width, height: height)
    }

    func updateUIViewController(_ uiViewController: FlexibleSizingBadViewController, context: Context) {
        uiViewController.buttonTitle = title
        uiViewController.width = width
        uiViewController.height = height
    }
}

#Preview {
    NavigationStack {
        FlexibleSizingBadUIView()
            .navigationTitle("❌ Flexible Sizing (UIKit)")
            .navigationBarTitleDisplayMode(.inline)
    }
}
