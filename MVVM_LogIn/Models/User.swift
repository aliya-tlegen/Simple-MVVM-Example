//
//  User.swift
//  MVVM_LogIn
//
//  Created by Алия Тлеген on 23.11.2022.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}

extension User {
    static var logins = [
        User(login: "aliya", password: "12345")
    ]
}
