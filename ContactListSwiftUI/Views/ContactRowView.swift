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
        Button(action: {isPresented.toggle()}) {
            HStack {
                Text("\(person.fullName)")
                    .frame(width: 120, alignment: .leading)
                Text("\(person.mobilePhone)")
                    .frame(alignment: .leading)
                
                Spacer()
                
                Text("\(person.eMail)")
            }
        }
        .sheet(isPresented: $isPresented) {
            PersonInfoView(person: person)
        }
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(person: Person.getOnePerson())
    }
}
