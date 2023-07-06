//
//  Person.swift
//  ContactList
//
//  Created by Ilnur on 29.04.2023.
//

struct Person: Identifiable {
    
    let id: Int
    let name: String
    let surname: String
    let email: String
    let mobilePhone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        // создаем пустой массив, чтобы его заполнить объектами данных
        var persons:[Person] = []
        // Данные берем из класса DataStore создавая экземпляры класса(массивы)
        // свойсто shuffled() перемешивает данные в массиве данных
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phones = DataStore.shared.mobilePhones.shuffled()

        // перебираем в цикле целые числа(индексы) для дальнейшего извлечения данных
        // внутри цикла инициализируем экземпляр модели
        for index in 0..<names.count {
            let person = Person(
                // передаем значение по индексу, таким образом берем первый элемент массива
                id: index + 1,
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                mobilePhone: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

