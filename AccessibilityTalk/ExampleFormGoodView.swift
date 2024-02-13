//
//  ExampleFormView.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-11.
//

import SwiftUI

struct ExampleFormGoodView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    @State var wantsNewsletter = false

    private let labelWidth: Double = 150

    var body: some View {
        VStack {
            ScrollView {
                VStack(spacing: 24) {
                    Text("Sign Up")
                        .font(.largeTitle)
                        .bold()

                    VStack(alignment: .leading, spacing: 8) {
                        label("Name")
                        TextField(text: $name) { EmptyView() }
                            .textFieldStyle(.roundedBorder)
                            .textContentType(.name)
                            .autocorrectionDisabled()
                            .textInputAutocapitalization(.words)
                            .accessibilityLabel("Name")
                    }

                    VStack(alignment: .leading, spacing: 8) {
                        label("Email")
                        TextField(text: $email) { EmptyView() }
                            .textFieldStyle(.roundedBorder)
                            .textContentType(.emailAddress)
                            .autocorrectionDisabled()
                            .textInputAutocapitalization(.never)
                            .accessibilityLabel("Email")
                    }

                    VStack(alignment: .leading, spacing: 8) {
                        label("Password")
                        SecureField(text: $password) { EmptyView() }
                            .textFieldStyle(.roundedBorder)
                            .textContentType(.newPassword)
                            .accessibilityLabel("Password")
                    }

                    Toggle(isOn: $wantsNewsletter) {
                        label("Sign up for\u{00a0}our newsletter")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
            }

            Spacer()

            Button {} label: {
                Label("Create Account", systemImage: "arrow.right")
                    .frame(minHeight: 44)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("✅ Example Form")
        .navigationBarTitleDisplayMode(.inline)
    }

    private func label(_ title: String) -> some View {
        Text(title)
            .accessibilityHidden(true)
    }
}

#Preview {
    NavigationStack {
        ExampleFormGoodView()
    }
}
