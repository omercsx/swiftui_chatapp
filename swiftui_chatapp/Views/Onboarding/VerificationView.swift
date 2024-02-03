//
//  VerificationView.swift
//  swiftui_chatapp
//
//  Created by Omer Cagri Sayir on 3.02.2024.
//

import SwiftUI

struct VerificationView: View {
    @Binding var currentStep: OnboardingSteps
    @State var verificationCode = ""

    var body: some View {
        VStack {
            Text("Verification")
                .font(Font.titleText)
                .padding(.top, 52)

            Text("Enter the 6-digit verification code we sent to your device.")
                .font(Font.bodyParagraph)
                .padding(.top, 12)
                .padding(.bottom, 34)

            // Text Field
            ZStack {
                Rectangle()
                    .frame(height: 56)
                    .foregroundStyle(Color.inputField)

                HStack {
                    TextField("e.g. 123456",
                              text: $verificationCode)

                    Spacer()
                    Button(action: {
                        // remove text
                        verificationCode = ""
                    }, label: {
                        Image(systemName: "multiply.circle.fill")
                            .resizable()
                            .frame(width: 19, height: 19)
                            .tint(Color.iconsInput)
                    })
                }
                .padding()
            }

            Spacer()

            Button(action: {
            }, label: {
                Text("Next")
            })
            .buttonStyle(OnboardingButtonStyle())
            .padding(.bottom, 87)
        }
        .padding(.horizontal, 14)
    }
}

#Preview {
    VerificationView(currentStep: .constant(.verification))
}
