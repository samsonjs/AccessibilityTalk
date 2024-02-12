//
//  ExampleFormBadView.swift
//  AccessibilityTalk
//
//  Created by Work on 2024-02-11.
//

import SwiftUI

struct ExampleFormBadView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    @State var passwordConfirmation = ""
    @State var wantsNewsletter = false

    private let labelWidth: Double = 150

    var body: some View {
        VStack {
            Text("Sign Up")
                .font(.largeTitle)
                .bold()

            HStack {
                label("Name")
                TextField("", text: $name, prompt: Text("Johnny Appleseed"))
                    .textContentType(.name)
                    .textFieldStyle(.roundedBorder)
            }

            HStack {
                label("Email")
                TextField("", text: $email, prompt: Text("johnny@appleseed.net"))
                    .textContentType(.emailAddress)
                    .textFieldStyle(.roundedBorder)
            }

            HStack {
                label("Password")
                TextField("", text: $name, prompt: Text("super secret"))
                    .textContentType(.newPassword)
                    .textFieldStyle(.roundedBorder)
            }

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
        .navigationTitle("❌ Example Form")
        .navigationBarTitleDisplayMode(.inline)
    }

    private func label(_ title: String) -> some View {
        Text(title)
            .frame(minWidth: labelWidth, alignment: .trailing)
    }
}

#Preview {
    NavigationStack {
        ExampleFormBadView()
    }
}
