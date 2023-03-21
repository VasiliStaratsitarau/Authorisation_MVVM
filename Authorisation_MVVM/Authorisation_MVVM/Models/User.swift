//
//  User.swift
//  Authorisation_MVVM
//
//  Created by Vasili Staratsitarau on 21/03/2023.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}

extension User {
    static var logins = [
    User(login: "word", password: "12345")
    ]
}
