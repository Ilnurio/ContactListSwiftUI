//
//  PersonInfoView.swift
//  ContactListSwiftUI
//
//  Created by Ilnur on 03.07.2023.
//

import SwiftUI

struct PersonInfoView: View {
    let person: [Person]
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PersonInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PersonInfoView(person: Person.getContactList())
    }
}
