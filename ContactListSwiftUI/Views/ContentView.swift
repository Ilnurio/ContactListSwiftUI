//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Ilnur on 03.07.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // создаем нижний тапбар
        TabView {
            ContactListView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Contacts")
                }
            PersonListView()
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
