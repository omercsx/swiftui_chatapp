//
//  CustomTabBarView.swift
//  swiftui_chatapp
//
//  Created by Omer Cagri Sayir on 2.02.2024.
//

import SwiftUI

enum Tabs: Int {
    case chats = 0
    case contacts = 1
}

struct CustomTabBarView: View {
    @Binding var selectedTab: Tabs
    
    var body: some View {
        HStack(alignment: .center) {
            // Chats
            Button(action: {
                // Switch to chats
                withAnimation{
                    selectedTab = .chats
                }
            }, label: {
                TabBarButton(buttonText: "Chats", imageName: "bubble.left", isActive: selectedTab == .chats)
            })
            .tint(Color.iconsSecondary)
            
            // New Chat
            Button(action: {
                // Switch to chats
            }, label: {
                GeometryReader { geo in
                    VStack(alignment: .center, spacing: 4) {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width:32, height: 32)
                        Text("New Chat")
                            .font(Font.tabBar)
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                }
            })
            .tint(Color.iconsPrimary)
            
            // Contacts
            Button(action: {
                // Switch to chats
                withAnimation {
                    selectedTab = .contacts
                }
            }, label: {
                TabBarButton(buttonText: "Contacts", imageName: "person", isActive: selectedTab == .contacts)
            })
            .tint(Color.iconsSecondary)
        }
        .frame(height: 82)
    }
}

#Preview {
    CustomTabBarView(selectedTab: .constant(.contacts))
}
