//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Ilnur on 03.07.2023.
//

import SwiftUI

struct ContactListView: View {
    let person: [Person]
    
    var body: some View {
        NavigationStack {
            List(person) { person in
                NavigationLink(
                    person.fullName,
                    destination: PersonInfoView(person: person)
                )
            }
            .listStyle(.plain)
        .navigationTitle("Contacts")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(person: Person.getContactList())
    }
}
