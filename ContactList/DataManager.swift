//
//  DataManager.swift
//  ContactList
//
//  Created by Василий Полторак on 08.06.2022.
//

class DataManager {
    
    static let shared = DataManager()
    
    private init() {}
    
    var names = [
        "Glen",
        "Tom",
        "Edward",
        "Willy",
        "Jack"
    ]
    
    var lastNames = [
        "Lantz",
        "Hanson",
        "Scissorhands",
        "Wonka",
        "Sparrow"
    ]
    
    var phones = [
        "8-111-111-11-11",
        "8-222-222-22-22",
        "8-333-333-33-33",
        "8-444-444-44-44",
        "8-555-555-55-55",
    ]
    
    var mails = [
        "1111@mail.ru",
        "2222@mail.ru",
        "3333@mail.ru",
        "4444@mail.ru",
        "5555@mail.ru"
    ]

}
