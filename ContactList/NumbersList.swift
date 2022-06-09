//
//  NumbersList.swift
//  ContactList
//
//  Created by Василий Полторак on 08.06.2022.
//

import SwiftUI

struct NumbersList: View {
    
    let contacts: [Person]
    
    var body: some View {
        
        NavigationView{
            List(contacts) { contact in
                Section(header: Text(contact.fullName)) {
                    ContactInfo(person: contact, contact: .phone)
                    ContactInfo(person: contact, contact: .mail)
                }
            }
            .navigationTitle("Number List")
        }
    }
}

struct NumbersList_Previews: PreviewProvider {
    static var previews: some View {
        NumbersList(contacts: Person.getPersons())
    }
}
