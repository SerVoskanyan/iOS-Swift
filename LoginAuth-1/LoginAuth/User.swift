//
//  User.swift
//  LoginAuth
//
//  Created by Серик Восканян on 12.06.2023.
//

import UIKit

struct User {
    let login: String?
    let password: String?
}

extension User {
    static var logins = [User(login: "Serik", password: "12345")]
}
