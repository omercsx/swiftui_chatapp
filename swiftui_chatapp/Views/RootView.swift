//
//  RootView.swift
//  swiftui_chatapp
//
//  Created by Omer Cagri Sayir on 29.01.2024.
//

import SwiftUI

struct RootView: View {
    @State var selectedTab: Tabs = .contacts
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .font(Font.pageTitle)
            Spacer()
            CustomTabBarView(selectedTab: $selectedTab)
        }
    }
}

#Preview {
    RootView()
}
