//
//  PersonInfoView.swift
//  ContactListSwiftUI
//
//  Created by Ilnur on 03.07.2023.
//

import SwiftUI

struct PersonInfoView: View {
    let person: Person
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 100, height: 100)
            HStack {
                Image(systemName: "iphone.gen1")
                Text("\(person.mobilePhone)")
            }
            HStack {
                Image(systemName: "mail")
                Text("\(person.eMail)")
            }
            Button(action: {}) {
                Text("return to Contact List")
                    .foregroundColor(.black)
                    .font(.system(size: 20))
            }
                .frame(width: 200, height: 60)
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(Color.black, lineWidth: 4)
                )
            Spacer()
        }
        .padding()
    }
}

struct PersonInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PersonInfoView(person: Person.getOnePerson())
    }
}
