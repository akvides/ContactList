//
//  ContactsList.swift
//  ContactList
//
//  Created by Василий Полторак on 08.06.2022.
//

import SwiftUI

struct ContactsList: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView{
            List(contacts) { contact in
                NavigationLink(contact.fullName) {
                    DetailInfo(person: contact)
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactsList_Previews: PreviewProvider {
    static var previews: some View {
        ContactsList(contacts: Person.getPersons())
    }
}
