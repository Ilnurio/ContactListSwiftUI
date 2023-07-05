//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Ilnur on 03.07.2023.
//

import SwiftUI

struct ContactListView: View {
    let navigationName: String
    let person: [Person]
    
    var body: some View {
        NavigationStack {
            List(person) { person in
                NavigationLink(destination: PersonInfoView(person: person)) {
                    ContactRowView(person: person)
                }
            }
            .listStyle(.plain)
        .navigationTitle(navigationName)
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(navigationName: "Contacts", person: Person.getContactList())
    }
}
