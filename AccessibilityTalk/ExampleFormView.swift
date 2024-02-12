//
//  ExampleFormView.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-11.
//

import SwiftUI

struct ExampleFormView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    @State var wantsNewsletter = false

    private let labelWidth: Double = 150

    var body: some View {
        VStack {
            Text("Sign Up")
                .font(.largeTitle)
                .bold()

            TextField(text: $name) { Text("Name") }
                .textContentType(.name)
                .textFieldStyle(.roundedBorder)

            TextField(text: $email) { Text("Email") }
                .textContentType(.emailAddress)
                .textFieldStyle(.roundedBorder)

            SecureField(text: $password) { Text("Password") }
                .textContentType(.newPassword)
                .textFieldStyle(.roundedBorder)

            Toggle(isOn: $wantsNewsletter) {
                label("Sign up for our newsletter")
            }
            .padding(.horizontal)

            Spacer()

            Button {} label: {
                Label("Create Account", systemImage: "arrow.right")
                    .frame(width: 300, height: 44)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("✅ Example Form")
        .navigationBarTitleDisplayMode(.inline)
    }

    private func label(_ title: String) -> some View {
        Text(title)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    NavigationStack {
        ExampleFormView()
    }
}
