//
//  RootView.swift
//  swiftui_chatapp
//
//  Created by Omer Cagri Sayir on 29.01.2024.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(Font.pageTitle)
        }
        .padding()
    }
}

#Preview {
    RootView()
}
