//
//  WelcomeView.swift
//  swiftui_chatapp
//
//  Created by Omer Cagri Sayir on 3.02.2024.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var currentStep: OnboardingSteps

    var body: some View {
        VStack {
            Spacer()
            Image("onboarding-welcome")

            Text("Welcome to Chat App")
                .font(Font.titleText)
                .padding(.top, 32)

            Text("Simple and fuss-free chat experience")
                .font(Font.bodyParagraph)
                .padding(.top, 8)

            Spacer()

            Button(action: {
                currentStep = .phoneNumber
            }, label: {
                Text("Get Started")
            })
            .buttonStyle(OnboardingButtonStyle())

            Text("By tapping 'Get Started', you agree to our Privacy Policy.")
                .font(Font.smallText)
                .padding(.top, 14)
                .padding(.bottom, 61)
        }
        .padding(.horizontal, 14)
    }
}

#Preview {
    WelcomeView(currentStep: .constant(.welcome))
}
