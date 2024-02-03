//
//  OnboardingButtonStyle.swift
//  swiftui_chatapp
//
//  Created by Omer Cagri Sayir on 3.02.2024.
//

import SwiftUI

struct OnboardingButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            Rectangle()
                .frame(height: 50)
                .cornerRadius(4)
                .foregroundStyle(Color.buttonPrimary)

            configuration.label
                .font(Font.button)
                .foregroundStyle(Color.textButton)
        }
    }
}
