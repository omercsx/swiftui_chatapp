//
//  CreateProfileTextFieldStyle.swift
//  swiftui_chatapp
//
//  Created by Omer Cagri Sayir on 3.02.2024.
//

import SwiftUI

struct CreateProfileTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.inputField)
                .cornerRadius(8)
                .frame(height: 46)

            // This ref textfield
            configuration
                .font(.tabBar)
                .padding(.horizontal)
        }
    }
}
