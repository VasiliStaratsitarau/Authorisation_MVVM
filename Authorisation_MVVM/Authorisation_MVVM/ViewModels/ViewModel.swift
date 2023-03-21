//
//  ViewModel.swift
//  Authorisation_MVVM
//
//  Created by Vasili Staratsitarau on 21/03/2023.
//

import Foundation

class ViewModel {
    var statusText = Dynamic("")
    
    func userButtonPressed(login: String, password: String) {
        if login != User.logins[0].login || password != User.logins[0].password {
            statusText.value = "Log in Failed"
        } else {
            statusText.value = "Success"
        }
    }
}
