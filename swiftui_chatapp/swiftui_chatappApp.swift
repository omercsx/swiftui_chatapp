//
//  swiftui_chatappApp.swift
//  swiftui_chatapp
//
//  Created by Omer Cagri Sayir on 29.01.2024.
//

import SwiftUI
import FirebaseCore

@main
struct swiftui_chatappApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
    
    init() {
        FirebaseApp.configure()
    }
}
