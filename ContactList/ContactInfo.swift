//
//  ContactInfo.swift
//  ContactList
//
//  Created by Василий Полторак on 09.06.2022.
//

import SwiftUI

enum ContactVariation {
    case phone
    case mail
}

struct ContactInfo: View {
    let person: Person
    let contact: ContactVariation
    
    var body: some View {
        HStack{
            Image(systemName: contact == .phone ? "phone" : "envelope.fill")
                .foregroundColor(.blue)
            Text(contact == .phone ? person.phone : person.mail)
        }
    }
}

struct ContactInfo_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfo(person: Person.getPerson(), contact: .phone)
    }
}
