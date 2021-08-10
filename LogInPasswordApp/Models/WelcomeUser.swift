//
//  WelcomeUser.swift
//  LogInPasswordApp
//
//  Created by Maxim Kucherov on 04.08.2021.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        return User(
            userName: "User",
            password: "Password",
            person: Person(
                name: "Maxim",
                surname: "Kucherov",
                study: Study(
                    school: "Школа №168",
                    firstGraduate: "СГУПС - ИЭФ (1997 - 2002гг.)",
                    secondGraduate: "СГУПС - СЖД (2002 - 2005гг.)",
                    phD: "СГУПС - к.э.н. (2003 - 2010гг.)"
                ),
                job: .firstJod,
                hobby: Hobby(
                    hobbyName: "Спорт",
                    sport: .beforeTen
                )
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let study: Study
    let job: Job
    let hobby: Hobby
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

struct Study {
    let school: String
    let firstGraduate: String
    let secondGraduate: String
    let phD: String
}

enum Job {
    case firstJod
    case secondJob
    case thirdJod
    case frelance
    
    var definition: String {
        switch self {
        case .firstJod:
            return "Экономист на заводе Сибсельмаш"
        case .secondJob:
            return "Начальника отдела смет - проектный институт Сибжелдорпроект"
        case .thirdJod:
            return "Заместитель начальника отдела цен - ОАО \"РЖД\""
        case .frelance:
            return "Занимаюсь фрилансем Ios development"
        }
    }
}

struct Hobby {
    let hobbyName: String
    let sport: Sport
}

enum Sport {
    case beforeTen
    case fromTenToTwenty
    case fromTwentyToThirty
    case fromThirtyToNow
    
    var definition: String {
        switch self {
        case .beforeTen:
            return "I play badminton"
        case .fromTenToTwenty:
            return "I like running"
        case .fromTwentyToThirty:
            return "I went workout"
        case .fromThirtyToNow:
            return "I train at home"
        }
    }
}
