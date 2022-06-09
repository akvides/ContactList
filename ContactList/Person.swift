//
//  Person.swift
//  ContactList
//
//  Created by Василий Полторак on 08.06.2022.
//

struct Person: Identifiable {
    
    let id: Int
    let name: String
    let lastName: String
    let phone: String
    let mail: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
    
    static func getPersons() -> [Person] {
        
        let dataManager = DataManager.shared
        var persons:[Person] = []
        
        var id = 0
        
        while !dataManager.names.isEmpty {
            let name = dataManager.names.remove(at: Int.random(in: 0..<dataManager.names.count))
            let lastName = dataManager.lastNames.remove(at: Int.random(in: 0..<dataManager.lastNames.count))
            let phone = dataManager.phones.remove(at: Int.random(in: 0..<dataManager.phones.count))
            let mail = dataManager.mails.remove(at: Int.random(in: 0..<dataManager.mails.count))
            
            let person = Person(id: id, name: name, lastName: lastName, phone: phone, mail: mail)
    
            persons.append(person)
            id += 1
        }
        return persons
    }
    
    static func getPerson() -> Person {
        
        let dataManager = DataManager.shared
        
        let name = dataManager.names[Int.random(in: 0..<dataManager.names.count)]
        let lastName = dataManager.lastNames[Int.random(in: 0..<dataManager.lastNames.count)]
        let phone = dataManager.phones[Int.random(in: 0..<dataManager.phones.count)]
        let mail = dataManager.mails[Int.random(in: 0..<dataManager.mails.count)]
        
        return Person(id: 0,
                      name: name,
                      lastName: lastName,
                      phone: phone,
                      mail: mail)
    }
    
}
