//
//  PhoneNumberView.swift
//  swiftui_chatapp
//
//  Created by Omer Cagri Sayir on 3.02.2024.
//

import SwiftUI

struct PhoneNumberView: View {
    @Binding var currentStep: OnboardingSteps
    @State var phoneNumber = ""
    var body: some View {
        VStack {
            Text("Verification")
                .font(Font.titleText)
                .padding(.top, 52)

            Text("Enter your mobile number below. We'll send you a verification code after.")
                .font(Font.bodyParagraph)
                .padding(.top, 12)
                .padding(.bottom, 34)

            // Text Field
            ZStack {
                Rectangle()
                    .frame(height: 56)
                    .foregroundStyle(Color.inputField)

                HStack {
                    TextField("e.g. +1 613 515 0123",
                              text: $phoneNumber)
                        .keyboardType(.phonePad)

                    Spacer()
                    Button(action: {
                        // remove text
                        phoneNumber = ""
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
                currentStep = .verification
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
    PhoneNumberView(currentStep: .constant(.phoneNumber))
}
