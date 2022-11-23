//
//  ViewModel.swift
//  MVVM_LogIn
//
//  Created by Алия Тлеген on 23.11.2022.
//

import Foundation
import UIKit.UIColor

class ViewModel {
    var statusText = Dynamic("")
    var statusColor = Dynamic(UIColor.white)
    
    func userButtonPressed(login: String, password: String) {
        if login != User.logins[0].login || password != User.logins[0].password {
            statusText.value = "Login failed"
            statusColor.value = .red
        } else {
            statusText.value = "You successfully logged in."
            statusColor.value = .green
        }
    }
}
