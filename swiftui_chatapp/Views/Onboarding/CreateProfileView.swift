//
//  CreateProfileView.swift
//  swiftui_chatapp
//
//  Created by Omer Cagri Sayir on 3.02.2024.
//

import SwiftUI

struct CreateProfileView: View {
    @Binding var currentStep: OnboardingSteps
    @State var firstname = ""
    @State var lastname = ""

    var body: some View {
        VStack {
            Text("Setup your Profile")
                .font(Font.titleText)
                .padding(.top, 52)

            Text("Just a few more details to get started.")
                .font(Font.bodyParagraph)
                .padding(.top, 12)

            Spacer()

            // Profile image button
            Button(action: /*@START_MENU_TOKEN@*/ {}/*@END_MENU_TOKEN@*/, label: {
                ZStack {
                    Circle()
                        .foregroundStyle(Color.white)

                    Circle()
                        .stroke(lineWidth: 1)

                    Image(systemName: "camera.fill")
                        .tint(Color.iconsInput)
                }
                .frame(width: 134, height: 134)
            })
            Spacer()
            // First Name

            TextField("First Name", text: $firstname)
                .textFieldStyle(CreateProfileTextFieldStyle())

            // Last Name

            TextField("Last Name", text: $lastname)
                .textFieldStyle(CreateProfileTextFieldStyle())

            Spacer()

            Button(action: {
                currentStep = .contacts
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
    CreateProfileView(currentStep: .constant(.profile))
}
