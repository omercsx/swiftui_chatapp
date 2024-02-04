//
//  ContactsViewModel.swift
//  swiftui_chatapp
//
//  Created by Omer Cagri Sayir on 4.02.2024.
//

import Contacts
import Foundation

class ContactsViewModel: ObservableObject {
    func getLocalContacts() {
        // Perform the contact store method async so it doesn't block the UI
        DispatchQueue(label: "getcontacts").async {
            do {
                // Ask for permission
                let store = CNContactStore()

                // List of keys we want to get
                let keys = [CNContactPhoneNumbersKey, CNContactGivenNameKey, CNContactFamilyNameKey] as! [CNKeyDescriptor]

                // Create a fetch request
                let fetchRequest = CNContactFetchRequest(keysToFetch: keys)

                // get the contacts on the user's phone
                try store.enumerateContacts(with: fetchRequest) { contact, _ in
                    var c = contact
                }
            } catch {
                // Handle error
            }
        }
    }
}
