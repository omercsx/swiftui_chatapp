//
//  SyncContactsView.swift
//  swiftui_chatapp
//
//  Created by Omer Cagri Sayir on 3.02.2024.
//

import SwiftUI

struct SyncContactsView: View {
    @Binding var isOnboarding: Bool
    var body: some View {
        VStack {
            Spacer()
            Image("onboarding-all-set")

            Text("Awesome!")
                .font(Font.titleText)
                .padding(.top, 32)

            Text("Continue to start chatting with your friends.")
                .font(Font.bodyParagraph)
                .padding(.top, 8)

            Spacer()

            Button(action: {
                isOnboarding = false
            }, label: {
                Text("Continue")
            })
            .buttonStyle(OnboardingButtonStyle())
            .padding(.bottom, 87)
        }
        .padding(.horizontal, 14)
    }
}

#Preview {
    SyncContactsView(isOnboarding: .constant(false))
}
