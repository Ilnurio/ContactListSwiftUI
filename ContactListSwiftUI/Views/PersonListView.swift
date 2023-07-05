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
            List {
                ForEach(person) { person in
                    Section(header: Text(person.fullName)) {
                        HStack {
                            Image(systemName: "phone")
                                .foregroundColor(.blue)
                            Text("\(person.mobilePhone)")
                        }
                        HStack {
                            Image(systemName: "mail")
                                .foregroundColor(.blue)
                            Text("\(person.eMail)")
                        }
                    }
                }
                .headerProminence(.increased)
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
