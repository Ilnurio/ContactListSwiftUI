//
//  PersonListView.swift
//  ContactListSwiftUI
//
//  Created by Ilnur on 03.07.2023.
//

import SwiftUI

struct PersonListView: View {
    let person: [Person]
    
    var body: some View {
        NavigationStack {
            List(person) { person in
                Section(header: Text(person.fullName).font(.headline)) {
                    Label(person.mobilePhone, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                }
            }
            .listStyle(.plain)
            .navigationTitle("Person Info")
        }
    }
}

struct PersonListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonListView(person: Person.getContactList())
    }
}
