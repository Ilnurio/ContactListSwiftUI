//
//  ContactRowView.swift
//  ContactListSwiftUI
//
//  Created by Ilnur on 05.07.2023.
//

import SwiftUI

struct ContactRowView: View {
    @State private var isPresented = false
    let person: Person
    
    var body: some View {
        HStack {
            Text("\(person.fullName)")
                .frame(width: 200, alignment: .leading)
            Text("\(person.mobilePhone)")
                .frame(alignment: .leading)
        }
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(person: Person.getOnePerson())
    }
}
