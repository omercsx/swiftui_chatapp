//
//  OnboardingContainerView.swift
//  swiftui_chatapp
//
//  Created by Omer Cagri Sayir on 3.02.2024.
//

import SwiftUI

enum OnboardingSteps: Int {
    case welcome = 0
    case phoneNumber = 1
    case verification = 2
    case profile = 3
    case contacts = 4
}

struct OnboardingContainerView: View {
    @State var currentStep: OnboardingSteps = .welcome
    @Binding var isOnboarding: Bool

    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()

            switch currentStep {
            case .welcome:
                WelcomeView(currentStep: $currentStep)

            case .phoneNumber:
                PhoneNumberView(currentStep: $currentStep)

            case .verification:
                VerificationView(currentStep: $currentStep)

            case .profile:
                CreateProfileView(currentStep: $currentStep)

            case .contacts:
                SyncContactsView(isOnboarding: $isOnboarding)
            }
        }
    }
}

#Preview {
    OnboardingContainerView(isOnboarding: .constant(false))
}
