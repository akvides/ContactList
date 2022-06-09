//
//  DetailInfo.swift
//  ContactList
//
//  Created by Василий Полторак on 08.06.2022.
//

import SwiftUI

struct DetailInfo: View {
    
    let person: Person
    var body: some View {
        List() {
            HStack{
                Spacer()
                Image(systemName: "person.fill.questionmark")
                    .resizable()
                    .frame(width: 150, height: 130)
                Spacer()   
            }
            ContactInfo(person: person, contact: .phone)
            ContactInfo(person: person, contact: .mail)
        }
        .navigationTitle(person.fullName)
    }
}

struct DetailInfo_Previews: PreviewProvider {
    static var previews: some View {
        DetailInfo(person: Person.getPerson())
    }
}


