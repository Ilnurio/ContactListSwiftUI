//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Ilnur on 03.07.2023.
//

import SwiftUI

struct ContentView: View {
    // чтобы список контактов был в каждой вкладке одинаковый, нужно проинициализировать массив и тут
    private let person = Person.getContactList()
    
    var body: some View {
        // создаем нижний тапбар
        TabView {
            ContactListView(
                person: person
            )
                .tabItem {
                    Image(systemName: "person")
                    Text("Contacts")
                }
            PersonListView(person: person)
                .tabItem {
                    Image(systemName: "person.bust")
                    Text("Person Info")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
