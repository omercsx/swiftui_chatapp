//
//  AuthViewModel.swift
//  swiftui_chatapp
//
//  Created by Omer Cagri Sayir on 2.02.2024.
//

import Foundation
import FirebaseAuth

class AuthViewModel {
    static func isUserLoggedIn() -> Bool {
        return Auth.auth().currentUser != nil
    }
    
    static func getLoggedInUserID() -> String {
        return Auth.auth().currentUser?.uid ?? ""
    }
    
    static func logout() {
        try? Auth.auth().signOut()
    }
}
