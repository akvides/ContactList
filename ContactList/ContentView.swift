//
//  ContentView.swift
//  ContactList
//
//  Created by Василий Полторак on 08.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    let persons = Person.getPersons()
    var body: some View {
        TabView {
            ContactsList(contacts: persons)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts List")
                }
            NumbersList(contacts: persons)
                .tabItem {
                    Image(systemName: "phone.circle")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
